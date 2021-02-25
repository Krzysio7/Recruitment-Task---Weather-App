import 'package:sqflite/sqflite.dart';
import 'package:weather_app/database/models/city.dart';
import 'package:weather_app/database/weather_app_database.dart';
import 'package:weather_app/utils/dependency_injection.dart';

class CitiesTable {
  static final String tableName = 'cities';

  static final String columnId = 'id';
  static final String columnCity = 'name';

  static createTable(Batch batch) {
    batch.execute('''
      CREATE TABLE $tableName
      (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $columnCity TEXT
      )
    ''');
  }

  static Future<bool> insertAll(
    List<City> cities, {
    bool deleteBefore = false,
  }) async {
    Database database = sl.get<WeatherAppDatabase>().getDatabase();

    try {
      await database.transaction((transaction) async {
        if (deleteBefore) {
          await transaction.delete(tableName);
        }

        cities.forEach((City city) async {
          final int count = Sqflite.firstIntValue(
            await transaction.rawQuery(
                'SELECT COUNT(*) FROM $tableName WHERE ? LIKE ?',
                [columnCity, city.name]),
          );

          if (count > 0) {
            return;
          }

          Map<String, dynamic> map = city.toJson();

          await transaction.insert(
            tableName,
            map,
            conflictAlgorithm: ConflictAlgorithm.replace,
          );
        });
      });

      return true;
    } catch (error) {
      // TODO
      print(error);
    }

    return false;
  }

  static Future<List<City>> getAll() async {
    Database database = sl.get<WeatherAppDatabase>().getDatabase();

    List<Map<String, dynamic>> results = await database.query(
      tableName,
    );

    List<City> cities = List.generate(results.length, (index) {
      return City.fromJson(results[index]);
    });

    return cities;
  }
}
