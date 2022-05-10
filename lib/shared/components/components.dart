import 'package:sqflite/sqflite.dart';

late Database database;

void createDB() async
{
  //var database hwa da el variable elly hnt3aml m3ah fl CRUD f hntl3o bara 3shan now hwa local
  database= await openDatabase(
    'GOgreen.db',
    version: 1,
    //oncreate method called one time only
    onCreate: (database, version)
    {
      print('database created');

      //tables only to be created one time so we create them here
      //elly gwa el excute('sql statement') by2raha w ynfzha
      //grenON esm el table
      database.execute('CREATE TABLE grenOn (id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT, role TEXT)').then((value) {
        print('tables created');
      }).catchError((error){
        print('Error when tables is created ${error.toString()}');
      });

    },
    onOpen: (database)
    {
      print('database opened');
    },
  );
}


Future insertToDB({
  name,
  confirmPass,
  role,
  required email,
  required password,
}) async {
  return await database.transaction((txn) async {
    txn
        .rawInsert(
            'INSERT INTO grenON(name, email, password, role) VALUES("$name", "$email","$password","$role")')
        .then((value) {
      print('$value : done inserting');
    }).catchError((error) {
      print('Error when new record is created ${error.toString()}');
    });
  });
}
