import 'package:flutter/material.dart';
import 'package:lets_chart/colors.dart';
import 'package:lets_chart/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text("Let's Chat", style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
            centerTitle: false,
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,),),
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
                indicatorWeight: 4,
                labelColor: tabColor,
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                tabs: [
              Tab(text: "Chats",),
              Tab(text: "Status",),
              Tab(text: "Calls",),
            ]),
          ),
          body: const ContactsList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: const Icon(Icons.message, color: Colors.white,),
          ),
        )
    );
  }
}
