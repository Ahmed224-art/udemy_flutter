import 'package:flutter/material.dart';
import 'package:udemy_flutter/models/user/user_model.dart';

class UsersScreen extends StatelessWidget {
  List<UserModel>user=[
    UserModel(id: 1,
        name: 'Ahmed hassan',
        phone: "+2001206620136"),
    UserModel(id: 2,
        name: 'Mariam hassan',
        phone: "+01285715546"),
    UserModel(id: 3,
        name: 'Amal mohamed',
        phone: "+2001210559564"),
    UserModel(id: 1,
        name: 'Ahmed hassan',
        phone: "+2001206620136"),
    UserModel(id: 2,
        name: 'Mariam hassan',
        phone: "+01285715546"),
    UserModel(id: 3,
        name: 'Amal mohamed',
        phone: "+2001210559564"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users'
        ),
      ),
      body: ListView.separated(itemBuilder: (context, index) => buildUserIitem(user[index]),
          separatorBuilder: (context, index) => Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
          itemCount: user.length)
    );
  }
}
Widget buildUserIitem(UserModel user)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      CircleAvatar(
        radius: 25.0,
        child: Text(
          '${user.id}',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(width: 10.0,),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${user.name}',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('${user.phone}',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    ],
  ),
);

