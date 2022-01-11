import 'dart:io';
import 'dart:async';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


class DBProvider {
  static final _databaseName = "Contact.db";
  static final _databaseVersion = 1;
  static final table = 'contato';  
  static final columnId = '_id';
  static final columnNome = 'nome';
  static final columnSobrenome = 'sobrenome';
  static final columnTelefone = 'telefone';
  // Tornando a Classe SingleTon
    DBProvider._();
  static final DBProvider instance = DBProvider._();

  Database? _database;

  Future<Database?> get database async {
    _database = await initDB();
    return _database;
  }

// Criando a tabela no banco de dados. 
initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String? path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path, 
    version: _databaseVersion, 
    onCreate: _onCreate);
  }

FutureOr<void> _onCreate(Database db, int version) async {
  await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnNome TEXT NOT NULL,
            $columnSobrenome TEXT NOT NULL,
            $columnTelefone INTEGER NOT NULL
          )
          ''');
  }  

  // Banco de Dados 

    // INSERT
 Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

    // UPDATE
    Future<int> update(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    int id = row[columnId];
    return await db!.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }

    // DELETE
  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

  // PESQUISAR FUNÇÕES 
   Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }
   Future<int?> queryRowCount() async {
    Database? db = await instance.database;
    return Sqflite.firstIntValue(await db!.rawQuery('SELECT COUNT(*) FROM $table'));
  }









}
