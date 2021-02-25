import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/database/cities_table.dart';

class WeatherAppDatabase {
  Database _database;

  Future<WeatherAppDatabase> init() async {
    _database = await openDatabase(
        join(await getDatabasesPath(), 'weather_app.db'),
        version: 1, onCreate: (Database database, int version) async {
      Batch batch = database.batch();
      // v1
      CitiesTable.createTable(batch);
      await batch.commit();
    }, onUpgrade: (Database db, int oldVersion, int newVersion) async {
      Batch batch = db.batch();
      if (oldVersion == 1) {
        // v2
      }
      await batch.commit();
    });
    return this;
  }

  getDatabase() {
    if (_database == null) {
      throw Exception('Call init() first!');
    }

    return _database;
  }
}
