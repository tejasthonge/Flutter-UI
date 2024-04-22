import 'package:cafehashtag/screens/Database.dart';
import 'package:cafehashtag/screens/screen1.dart';
import 'package:cafehashtag/screens/screen2.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


dynamic database;

List<SinghUp> usersList = [];
void main()async {

WidgetsFlutterBinding.ensureInitialized();

  database = await openDatabase(join(await getDatabasesPath(), "cafehashtagDb5.db"),
      version: 1, onCreate: (db, version) {
    db.execute(
      '''
          CREATE TABLE MenuTablee(
            id INTEGER PRIMARY KEY AUTOINCREMENT ,
            foodName TEXT,
            foodCat TEXT,
            foodPrize REAL,
            foodImgSrs TEXT,
            oraderedItemCount INT
            
            )''');



    db.execute(
      '''
          CREATE TABLE OradersTablee(
            id INTEGER PRIMARY KEY AUTOINCREMENT ,
            foodName TEXT,
            foodCat TEXT,
            foodPrize REAL,
            foodImgSrs TEXT,
            oraderedItemCount INT
            
            )''');



    db.execute(
      '''
          CREATE TABLE UserTablee(
            email TEXT PRIMARY KEY,
            password TEXT,
            
            )''');

      
    

  });

await initializeMenuDB();
print(await getMenuInDB());

// await initializeUsersInDb();

// print(await  getUserInDb());

runApp(const MyApp());


}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Screen1(),
    );
  }
}
