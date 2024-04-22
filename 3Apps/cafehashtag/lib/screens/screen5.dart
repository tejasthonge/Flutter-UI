import 'package:cafehashtag/screens/Database.dart';
import 'package:cafehashtag/screens/ModelClass.dart';
import 'package:cafehashtag/screens/screen6.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Scree5Menu extends StatefulWidget {

  const Scree5Menu({super.key});
  @override
  State createState() => _Screen5State();
}

List foodMenuList = [];
double tBil =0 ;
class _Screen5State extends State {
  int totalMenuCount = 0;
  int totalOrderCount = 0;
  @override
  void initState() {
    super.initState();
    initializeMenuList();
    initializeOrderList();
  }

  Future<void> initializeMenuList() async {
    foodMenuList = await getMenuInDB();

    setState(() {
      
      totalMenuCount = foodMenuList.length;

    });
  }

  Future<void> initializeOrderList() async {
    oraderList = await getOrdersInDB();
    setState(() {
      // initializeOrderList();

      totalOrderCount = oraderList.length;
      // initializeOrderList();

      print(totalOrderCount);
    });
  }

  // List foodMenuList = [
  //   FoodModelClass(id: 1, foodName: "Burger", foodCat: "Fast Food", foodPrize: 69.00, foodImgSrs:"lib/assets/images/MemuItems/1.png"),
  //   FoodModelClass(id: 2, foodName: "Pizza", foodCat: "Fast Food", foodPrize: 119.00, foodImgSrs:"lib/assets/images/MemuItems/2.png"),
  //   FoodModelClass(id: 3, foodName: "Sandwich", foodCat: "Fast Food", foodPrize: 99.00, foodImgSrs:"lib/assets/images/MemuItems/3.png"),
  //   FoodModelClass(id: 4, foodName: "Coffee", foodCat: "Beverage(Hot)", foodPrize: 35.00, foodImgSrs: "lib/assets/images/MemuItems/4.png"),
  //   FoodModelClass(id: 5, foodName: "Cold Coffee", foodCat: "Beverage(Cold)", foodPrize: 65.00, foodImgSrs: "lib/assets/images/MemuItems/5.png"),
  //   FoodModelClass(id: 6, foodName: "MilkShake", foodCat: "Beverage(Cold)", foodPrize: 110.00, foodImgSrs: "lib/assets/images/MemuItems/6.png"),
  //   FoodModelClass(id: 7, foodName: "Ice Cream", foodCat: "Dessert", foodPrize: 55.00, foodImgSrs: "lib/assets/images/MemuItems/7.png"),
  //   FoodModelClass(id: 8, foodName: "Pastry", foodCat: "Dessert", foodPrize: 45.00, foodImgSrs: "lib/assets/images/MemuItems/8.png"),
  //   FoodModelClass(id: 9, foodName: "Cake", foodCat: "Dessert", foodPrize: 250.00, foodImgSrs: "lib/assets/images/MemuItems/9.png"),

  // ];
  double totalBill(){
    

    double bill =0;

    for(int i=0;i<oraderList.length;i++){
      bill += oraderList[i].oraderedItemCount * oraderList[i].foodPrize;
    }
    return bill;
  }
  @override
  Widget build(BuildContext context) {
    // totalMenuCount =  foodMenuList.length ;

    return Scaffold(
      backgroundColor: const Color(0xFF100A29),
      body: Padding(
        padding: const EdgeInsets.only(

            // top: 40,
            ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: const EdgeInsets.only(
                top: 70,
        
                // left: 40
              ),
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Scree6Orders()));
                    },
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 2, bottom: 2, left: 30, right: 30),
                      alignment: Alignment.center,
                      height: 80,
                      width: 250,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(105, 76, 175, 79),
                        borderRadius: BorderRadius.only(
                            // topLeft: Radius.circular(40),
                            // bottomLeft: Radius.circular(40),
                            ),
                      ),
                      child: const Text(
                        "ORDERS",
                        style: TextStyle(
                            color: Color.fromARGB(161, 149, 103, 103),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Scree5Menu()));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 180),
                      padding: const EdgeInsets.only(
                          top: 2, bottom: 2, left: 30, right: 30),
                      alignment: Alignment.center,
                      height: 80,
                      width: 230,
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(0, 235, 235, 240),
                              offset: Offset(2, 3),
                              spreadRadius: 23,
                            )
                          ]),
                      child: const Text(
                        "Menu",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        
            //
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 0),
        
                width: double.infinity,
                // height: 40,
                child: ListView.builder(
                  itemCount: foodMenuList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 100,
                      child: Slidable(
                        endActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          extentRatio: 0.4,
                          children: [
                            Flexible(
                                flex: 1,
                                child: Column(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceAround,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6),
                                                  color: const Color.fromARGB(
                                                      170, 166, 166, 166),
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                    

                                                      isOrdered =true;

                                                      
                                                      foodMenuList[index].oraderedItemCount++;
                                                      insertIntoOraders(OrderedsFoodClass(
                                                          id: foodMenuList[index].id,
                                                          foodName: foodMenuList[index].foodName,
                                                          foodCat: foodMenuList[index].foodCat,
                                                          foodPrize: foodMenuList[index].foodPrize,
                                                          foodImgSrs: foodMenuList[index].foodImgSrs,
                                                          oraderedItemCount: foodMenuList[index].oraderedItemCount));
                                                    } );
                                                   initializeOrderList();
                                        
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.green,
                                                      shape:
                                                          BoxShape.circle,
                                                    ),
                                                    child: const Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceAround,
                                            children: [
                                              Container(
                                                padding: const EdgeInsets.all(10),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6),
                                                  color: const Color.fromARGB(
                                                      170, 166, 166, 166),
                                                ),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (foodMenuList[
                                                                  index]
                                                              .oraderedItemCount >
                                                          0) {
                                                        foodMenuList[index].oraderedItemCount--;
                                                        insertIntoOraders(OrderedsFoodClass(
                                                         id: foodMenuList[index].id,
                                                          foodName: foodMenuList[index].foodName,
                                                         foodCat: foodMenuList[index].foodCat,
                                                          foodPrize: foodMenuList[index].foodPrize,
                                                         foodImgSrs: foodMenuList[index].foodImgSrs,
                                                        oraderedItemCount: foodMenuList[index].oraderedItemCount)
                                                        );
                                                      initializeOrderList();
                                        
                                                            
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    decoration:
                                                        const BoxDecoration(
                                                      color: Colors.red,
                                                      shape:
                                                          BoxShape.circle,
                                                    ),
                                                    child: const Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 43,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                    Container(
                                      alignment: Alignment.center,
                                      margin: const EdgeInsets.all(3),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              170, 166, 166, 166),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Count : ${foodMenuList[index].oraderedItemCount} ",
                                        // "",
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                        startActionPane: ActionPane(
                          motion: const DrawerMotion(),
                          extentRatio: 0.3,
                          children: [
                            Flexible(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(6),
                                        color: const Color.fromARGB(
                                            170, 166, 166, 166),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            foodMenuList[index]
                                                .oraderedItemCount = 0;
                                                  insertIntoOraders(OrderedsFoodClass(
                                                         id: foodMenuList[index].id,
                                                          foodName: foodMenuList[index].foodName,
                                                         foodCat: foodMenuList[index].foodCat,
                                                          foodPrize: foodMenuList[index].foodPrize,
                                                         foodImgSrs: foodMenuList[index].foodImgSrs,
                                                        oraderedItemCount: foodMenuList[index].oraderedItemCount)
                                                        );
                                                    // initializeOrderList();
                                        
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(5),
                                          decoration: const BoxDecoration(
                                            color: Colors.red,
                                            shape: BoxShape.circle,
                                          ),
                                          child: const Icon(
                                            Icons.delete_forever_rounded,
                                            color: Colors.white,
                                            size: 43,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Count : ${foodMenuList[index].oraderedItemCount} ",
                                      // "",
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ))
                          ],
                        ),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          // width: double.infinity,
                          height: 100,
                          decoration: const BoxDecoration(
                              // color: Color(0xFFA6A6A6),
                              // color:
        
                              ),
        
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: Container(
                                  padding: const EdgeInsets.only(right: 4),
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 38, 32, 65),
                                      borderRadius:
                                          BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Expanded(
                                            // flex: 5,
                                            child: Expanded(
                                              child: Container(
                                                // width: Checkbox.width,
                                                width: 100,
                                                padding: const EdgeInsets.only(
                                                    top: 2,
                                                    bottom: 2,
                                                    left: 5,
                                                    right: 5),
                                                decoration: const BoxDecoration(
                                                    color: Color(0XFFE5B061),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(
                                                                    100),
                                                            bottomRight: Radius
                                                                .circular(
                                                                    100))),
        
                                                child: Text(
                                                  foodMenuList[index]
                                                      .foodName,
                                                  // "",
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 231, 215, 215),
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            // flex: 5,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.yellow,
                                                      size: 18,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.black,
                                                      size: 18,
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  foodMenuList[index]
                                                      .foodCat,
                                                  // "",
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
        
                                      //
                                      Container(
                                        height: 40,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 11, 42, 68),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          const Color.fromARGB(170, 166, 166, 166),
                                    ),
                                    child: Image.asset(
                                      foodMenuList[index].foodImgSrs,
                                      // "",
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 350,
        child: FloatingActionButton.extended(
          onPressed: () {
            
            
            setState(() {
              initializeOrderList();
              tBil = totalBill();    
              
            });
            setState(() {
              
            });
            // Add your onPressed logic here
            showBottom(context );
          },
          label: const Text(
            "Conform Order",
            style: TextStyle(
                fontSize: 17, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          icon: const Icon(
            Icons.food_bank_rounded,
            color: Colors.green,
          ), // You can use any icon you want here
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10), // 25 is half of 50 (height) for rounded shape
          ),
          backgroundColor: const Color.fromARGB(255, 156, 10, 0),
        ),
      ),
    );
  }

  Future<void> showBottom(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10,),
                    const Text(
                      "You added Items are ",
                      style: TextStyle( 
                        color: Color.fromARGB(66, 46, 6, 6),
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                          itemCount: oraderList.length,
                          itemBuilder: ((context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Column(
                                children: [
                                  Column(
                                    // mainAxisAlignment:MainAxisAlignment.spaceBetween,

                                    children: [
                                      Container(
                                        decoration:
                                            const BoxDecoration(color: Colors.red),
                                        width: double.infinity,
                                        height: 30,
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "Food Item :",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              "ItemCount :",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            Text(
                                              "Item Prize :",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          oraderList[index].foodName
                                                                                  // ""
                                                                                ),
                                        Text(
                                                                                  "${oraderList[index].oraderedItemCount}",
                                                                                  // "3"
                                                                                ),
                                        Text(
                                                                                  "${(oraderList[index].foodPrize) * (oraderList[index].oraderedItemCount)}",
                                                                                ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            );
                          })),
                    ),
                    const Row()
                  ]),
                  Container(
                    height: 30,
                    width: double.infinity,
                    decoration: const BoxDecoration( 
                      color: Colors.deepOrange
                    ),
                    child: Row( 
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                        
                        Container(
                          margin: const EdgeInsets.only( 
                            left: 30
                          ),
                          child: const Text(
                            "Total Bill : ",
                            style: TextStyle( 
                               
                               color: Colors.white,
                               fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Container( 
                          margin: const EdgeInsets.only(
                          right: 30
                          ),
                          child: Text( 

                            "$tBil",
                            style: const TextStyle( 

                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),

                          ),
                        )

                      ],
                    ),
                    
                  ),
               GestureDetector(
                onTap: () {
                  setState(() {
                  initializeOrderList();
                  // isOrdered = true;
                  
                  });
                  Navigator.pop(context);

                  (isOrdered)?showDialog(context: context, builder:
                    (BuildContext context){
                     return AlertDialog(
                          title: const Text("Your Order is placed ",
                          style: TextStyle(
                            color: Colors.green,
                            // fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          content: ClipOval(
                            child: Image.asset(
                              "lib/assets/images/orederplaced.jpeg",
                              // height: 100,
                              // width: 100,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child:const Text("Wait for few minutes")
                            ),
                          ],
                        );
                    }
                  ):  showDialog(context: context, builder:
                    (BuildContext context){
                     return AlertDialog(
                          title: const Text("Please add Any item",
                          style: TextStyle(
                            color: Colors.green,
                            // fontSize: 13,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          content: ClipOval(
                            child: Image.asset(
                              "lib/assets/images/noitemisplaced.webp",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child:const Text("ok")
                            ),
                          ],
                        );
                    }
                  )
                  
                  ;
                },
                child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    alignment: Alignment.center,
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 30,right: 30,bottom: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                        ),
                        Text(
                          "Place Order",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ));
        });
  }
}
