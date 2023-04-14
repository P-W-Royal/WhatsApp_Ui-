import 'package:flutter/material.dart';
class Homescren extends StatefulWidget {
  const Homescren({Key? key}) : super(key: key);

  @override
  State<Homescren> createState() => _HomescrenState();
}

class _HomescrenState extends State<Homescren> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child:
    Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        bottom: TabBar(
          tabs: [
            Icon(Icons.groups),
            Tab(child: Text('Chats'),),
            Tab(child: Text('Status'),),
            Tab(child: Text('Call'),)
          ],
        ),


        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 11,),
          Icon(Icons.search),
          SizedBox(width: 11,),
          PopupMenuButton(child:
          Icon(Icons.more_vert_rounded),
              itemBuilder: (context)=> const[
                PopupMenuItem(
                  value: 1,
                  child: Text("New group"),),
                PopupMenuItem(
                  value:2,
                  child: Text("New broadcast"),),

                PopupMenuItem(
                  value: 3,
                  child: Text("Linked devices"),),
                PopupMenuItem(
                  value: 4,
                  child: Text("Starred messages"),),
                PopupMenuItem(
                  value: 5,
                  child: Text("Settings"),),

              ]),


        ],
      ),
      body:TabBarView(
        
        children: [
          Text('Group'),
          ListView.builder(itemCount:100, itemBuilder: (context,index){
            return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
              title:Text('Ahmed') ,
              subtitle:Text('Where are you?') ,
              trailing:Text('11:56') ,

            );
          }),
          ListView.builder(itemCount: 10,itemBuilder: (context,index){
            return ListTile(
              leading: Container(decoration: BoxDecoration(
                shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 4
                      )
              ),




              child:CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
              title: Text('Alina'),
              subtitle: Text('Just now'),
            );



          }),
        
         ListView.builder(itemCount:12, itemBuilder: (context,index){
           return ListTile(
             leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=100')),
             title:Text('Hussain') ,
             subtitle: Text(index /1 == 0?"Yesterday, 12:56 PM": "Today, 8:49AM"),
             trailing: Icon(index /2 ==0? Icons.phone: Icons.video_camera_back),
           );
         })
        ],
        
      )

    )

    );



  }
}
