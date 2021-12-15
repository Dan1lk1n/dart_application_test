import 'dart:math';


class User{
  late int id;
  String firstName;
  String lastName;
  String eMail;
  String password;
  final DateTime regDate = DateTime.now();

  User(this.firstName, this.lastName, this.eMail, this.password,){
    id = generateId(10);
  }
  
  @override
  String toString() =>'User id:$id \n$firstName \n$lastName \nemai: $eMail';

  int generateId(int count){
    int result;
    List <int> nums = [];
    for (int i = 0; i < count; i++){
      nums.add((Random().nextInt(9) + 1).toInt());
    }
    result = int.parse(nums.join());
    return result;
  }
}

void main() {
  User newUser = User("Daniel", "Petrov", "example@ex.com", "password");

  print(newUser);
}


