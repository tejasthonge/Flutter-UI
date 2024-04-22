



import 'package:cafehashtag/main.dart';
import 'package:cafehashtag/screens/ModelClass.dart';
import 'package:sqflite/sql.dart';



Future<void> insertloginData(SignupDatabase obj) async {
  final localDB = await database;
  await localDB.insert(
    "UserTablee",
    obj.signupMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}



Future<List<SignupDatabase>> getUserInDb() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntryInDB = await localDB.query(
    "UserTablee",
  );

  return List.generate(mapEntryInDB.length, (i) {
    return SignupDatabase(
      email: mapEntryInDB[i]["email"],
      password: mapEntryInDB[i]["password"]
      );
  });
}

Future<void> initializeUsersInDb()async{

  SignupDatabase user1 = SignupDatabase( 
    email: "amarthonge6767@gmail.com",
    password: "8055"
  );
  SignupDatabase user2 =  SignupDatabase(email: "bhush614@gmail.com", password: "2003");

  insertloginData(user1);
  insertloginData(user2);
}



Future<void> initializeMenuDB()async{
    FoodModelClass obj1=     FoodModelClass(id: 1, foodName: "Burger", foodCat: "Fast Food", foodPrize: 69.00, foodImgSrs:"lib/assets/images/MemuItems/1.png");
    FoodModelClass obj2=     FoodModelClass(id: 2, foodName: "Pizza", foodCat: "Fast Food", foodPrize: 119.00, foodImgSrs:"lib/assets/images/MemuItems/2.png");
    FoodModelClass obj3=     FoodModelClass(id: 3, foodName: "Sandwich", foodCat: "Fast Food", foodPrize: 99.00, foodImgSrs:"lib/assets/images/MemuItems/3.png");
    FoodModelClass obj4=     FoodModelClass(id: 4, foodName: "Coffee", foodCat: "Beverage(Hot)", foodPrize: 35.00, foodImgSrs: "lib/assets/images/MemuItems/4.png");
    FoodModelClass obj5=     FoodModelClass(id: 5, foodName: "Cold Coffee", foodCat: "Beverage(Cold)", foodPrize: 65.00, foodImgSrs: "lib/assets/images/MemuItems/5.png");
    FoodModelClass obj6=     FoodModelClass(id: 6, foodName: "MilkShake", foodCat: "Beverage(Cold)", foodPrize: 110.00, foodImgSrs: "lib/assets/images/MemuItems/6.png");
    FoodModelClass obj7=     FoodModelClass(id: 7, foodName: "Ice Cream", foodCat: "Dessert", foodPrize: 55.00, foodImgSrs: "lib/assets/images/MemuItems/7.png");
    FoodModelClass obj8=     FoodModelClass(id: 8, foodName: "Pastry", foodCat: "Dessert", foodPrize: 45.00, foodImgSrs: "lib/assets/images/MemuItems/8.png");
    FoodModelClass obj9=     FoodModelClass(id: 9, foodName: "Cake", foodCat: "Dessert", foodPrize: 250.00, foodImgSrs: "lib/assets/images/MemuItems/9.png");


    insertIntoMenu(obj1);
    insertIntoMenu(obj2);
    insertIntoMenu(obj3);
    insertIntoMenu(obj4);
    insertIntoMenu(obj5);
    insertIntoMenu(obj6);
    insertIntoMenu(obj7);
    insertIntoMenu(obj8);
    await insertIntoMenu(obj9);


}


Future<void> insertIntoMenu(FoodModelClass ordObj) async {
  final localDB = await database;

  await localDB.insert(
      "MenuTablee", 
      ordObj.retMapMnClass(),
      conflictAlgorithm: ConflictAlgorithm.replace
      );
}


Future<void> insertIntoOraders(OrderedsFoodClass ordObj) async {
  final localDB = await database;

  await localDB.insert(
      "OradersTablee", 
      ordObj.retMapOrClass(),
      conflictAlgorithm: ConflictAlgorithm.replace
      );
}

Future<void> deleteOrder(int id) async {

  final localDB = await database;

  await localDB.delete(
    "OradersTablee",
    where: "id = ?",
    whereArgs: [id],
  );
}


Future<List<FoodModelClass>> getMenuInDB() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntryInDB = await localDB.query(
    "MenuTablee",
  );

  return List.generate(mapEntryInDB.length, (i) {
    return FoodModelClass(
        id: mapEntryInDB[i]["id"],
        foodName: mapEntryInDB[i]["foodName"],
        foodCat: mapEntryInDB[i]["foodCat"],
        foodPrize: mapEntryInDB[i]["foodPrize"],
        foodImgSrs: mapEntryInDB[i]["foodImgSrs"],
        oraderedItemCount: mapEntryInDB[i]["oraderedItemCount"],
        

        );
  });
}

Future<List<OrderedsFoodClass>> getOrdersInDB() async {
  final localDB = await database;

  List<Map<String, dynamic>> mapEntryInDB = await localDB.query(
    "OradersTablee",
  );

  return List.generate(mapEntryInDB.length, (i) {
    return OrderedsFoodClass(
        id: mapEntryInDB[i]["id"],
        foodName: mapEntryInDB[i]["foodName"],
        foodCat: mapEntryInDB[i]["foodCat"],
        foodPrize: mapEntryInDB[i]["foodPrize"],
        foodImgSrs: mapEntryInDB[i]["foodImgSrs"],
        oraderedItemCount:mapEntryInDB[i]["oraderedItemCount"],
        );
  });
}

// Future<List<OrderedsFoodClass>> getOrdersFromMenuDB() async {  //it returns the oredes whos order count is greater than the 0
//   final localDB = await database;

//   List<Map<String, dynamic>> mapEntryInDB = await localDB.query(
//     "MenuTablee",
//     where: "oraderedItemCount > 0", // Filter orders with count > 0
//   );

//   return List.generate(mapEntryInDB.length, (i) {
//     return OrderedsFoodClass(
//       id: mapEntryInDB[i]["id"],
//       foodName: mapEntryInDB[i]["foodName"],
//       foodCat: mapEntryInDB[i]["foodCat"],
//       foodPrize: mapEntryInDB[i]["foodPrize"],
//       foodImgSrs: mapEntryInDB[i]["foodImgSrs"],
//       oraderedItemCount: mapEntryInDB[i]["oraderedItemCount"],
//     );

    
//   });
// }