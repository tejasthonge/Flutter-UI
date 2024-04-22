

class SignupDatabase {

  final String email;
  final String password;
  SignupDatabase({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> signupMap() {
    return {
      'email': email,
      'password': password,
    };
  }

  @override
  String toString(){
    return "{email : $email ,password : $password}";
  }
}


class FoodModelClass{ 


  int? id =1;
  final String foodName ;
  final String foodCat;
  final double foodPrize;
  final String foodImgSrs ;
   int oraderedItemCount=0 ;

  FoodModelClass({ 
    this.id,
    required this.foodName,
    required this.foodCat,
    required this.foodPrize,
    required this.foodImgSrs,
     this.oraderedItemCount =0
    
  });
  Map<String,dynamic> retMapMnClass(){

    return {
      "id":id,
      "foodName":foodName,
      "foodCat":foodCat,
      "foodPrize":foodPrize,
      "foodImgSrs":foodImgSrs,
      "oraderedItemCount":oraderedItemCount,
    };

  }
  @override
  String toString() {
    return '{id: $id, foodName: $foodName, foodCat: $foodCat, foodPrize: $foodPrize, foodImgSrs: $foodImgSrs, oraderedItemCount: $oraderedItemCount}';
  }


  

}




class OrderedsFoodClass{ 
  final int id;
  final String foodName ;
  final String foodCat;
  final double foodPrize;
  final String foodImgSrs ;
  final int oraderedItemCount;

  OrderedsFoodClass(
    {
    required this.id,
    required this.foodName,
    required this.foodCat,
    required this.foodPrize,
    required this.foodImgSrs,
    required this.oraderedItemCount,
    }
  );

  Map<String,dynamic> retMapOrClass(){

    return {
      "id":id,
      "foodName":foodName,
      "foodCat":foodCat,
      "foodPrize":foodPrize,
      "foodImgSrs":foodImgSrs,
      "oraderedItemCount":oraderedItemCount,

    };
  }
    @override
  String toString() {
    return '{id: $id, foodName: $foodName, foodCat: $foodCat, foodPrize: $foodPrize, foodImgSrs: $foodImgSrs, oraderedItemCount: $oraderedItemCount}';
  }
  }  




