import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/AAEL6siOsid9VaM9TVpiIwl2z1KS0jbXfRM1Cftdvv_Qeg=s32-c-mo'),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {

          },
              icon:CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 16.0,
                ),
              )
          ),
          IconButton(onPressed: () {

          }, icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.blue,
            child: Icon(
                Icons.edit,
              size: 16.0,
              color: Colors.white,
            ),
          ),),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15.0,),
                    Text('Search',),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                height: 100,
                child: ListView.separated(itemBuilder: (context, index) => buildStoryItem(),
                    separatorBuilder: (context, index) => SizedBox(width: 10.0,),
                    itemCount: 10,
                scrollDirection: Axis.horizontal,

                ),
              ),
              ListView.separated(itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10.00,),
                  itemCount: 10,
              scrollDirection: Axis.vertical,
                physics:NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget buildChatItem()=>Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/AAEL6siOsid9VaM9TVpiIwl2z1KS0jbXfRM1Cftdvv_Qeg=s32-c-mo'),
        ),
        CircleAvatar(
          radius:10.0 ,
          backgroundColor: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 3.0,right: 3.0),
          child: CircleAvatar(
            radius: 7.5,
            backgroundColor: Colors.red,
          ),
        ),
      ],
    ),
    SizedBox(width: 20.0,),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('ahmed hassan hhhhhhhhhhhhhhhhhhhhhhhhh',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(children: [
            Text('messege',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 5.0,
                height: 5.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Text("21:25 pm"),
          ],
          )
        ],
      ),
    ),
  ],
);
Widget buildStoryItem()=>Container(
  width: 60.0,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/AAEL6siOsid9VaM9TVpiIwl2z1KS0jbXfRM1Cftdvv_Qeg=s32-c-mo'),
          ),
          CircleAvatar(
            radius:10.0,
            backgroundColor: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0,right: 3.0),
            child: CircleAvatar(
              radius:7.5,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      SizedBox(height: 10.0,),
      Text('Ahmed Hassan Ahmed',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);
