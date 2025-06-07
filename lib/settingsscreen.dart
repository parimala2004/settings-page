import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<IconData> iconItem = [
  Icons.lock_open, Icons.notification_important_outlined, CupertinoIcons.mail, CupertinoIcons.question_circle, Icons.block];

List<String> Items = [
  "Change PIN", "Notification and Email", "Invite to Pay Synce", "Privacy Policy", "Deleted account"];
class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios),
            title: Text("Pay Synce settings",style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,fontSize: 19),),
          ),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all( 8.0),
                child: Column(
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 180,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.black12)
                          ),
                        ),
                        Positioned(
                            top: -80,
                            left: 85,
                            child: CircleAvatar(
                              radius: 65,
                              backgroundImage: AssetImage("assets/images/image.jpg"),

                            ),
                          ),
                        Positioned(
                          top:15,
                          left: 180,
                          child: CircleAvatar(
                           backgroundColor: Colors.blue,
                          radius: 15,

                            child: Icon(CupertinoIcons.add,color: Colors.white,size:25,),

                        ),),
                        Positioned(
                            bottom: 20,
                            left: 45,
                            child: Column(
                           children: [
                             Text("Katherine Smith",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                             Text("+22 986 465 432",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.black26),),
                             SizedBox(height: 20,),
                             Row(
                               children: [
                                 Text("katherine.smith@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.blueAccent),),
                                 SizedBox(width: 10,),
                                 Icon(CupertinoIcons.pencil_circle,color: Colors.blueAccent,)
                               ],
                             )
                           ]
                            ))
                      ],
                    ),
                  ],
                ),    
              ),
              SizedBox(height: 20,),
              Expanded(child: ListView.builder(
                  itemCount: Items.length,
                  itemBuilder: (context,index)
                  {
                    return Column(
                      children: [
                        ListTile(
                          leading: Icon(iconItem[index],color:index==4?Colors.red:Colors.black,),
                          title: Text(Items[index],style: TextStyle(color: index==4?Colors.red:Colors.black,),),
                          trailing: Icon(Icons.navigate_next_outlined),
                        ),
                        Divider(
                          height: 1,
                          thickness:1,
                          color: Colors.black12,
                        ),
                      ],
                    );
                  }
              )
              ),
              Column(
                children: [Center(child: Text("Version 2.1.2(9)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
                  SizedBox(height: 10,),
                  Center(child: Text("Released on Febrauary 04,2021",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
                ],
              )
            ],
          )
      ),
    );
  }
}

