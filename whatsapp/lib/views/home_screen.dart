import 'package:flutter/material.dart';
import 'package:whatsapp/views/calls_view.dart';
import 'package:whatsapp/views/chat_view.dart';
import 'package:whatsapp/views/settings.dart';
import 'package:whatsapp/views/status_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  var ficon = Icons.message;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(
      length: 4,
      vsync: this,
    )..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              ficon = Icons.camera_alt;
              break;

            case 1:
              ficon = Icons.chat;
              break;

            case 2:
              ficon = Icons.camera_alt;
              break;

            case 3:
              ficon = Icons.call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Whatsapp'),
        centerTitle: true,
        bottom: TabBar(controller: tabController, tabs: [
          Tab(
            child: Icon(Icons.camera_alt),
          ),
          Tab(
            child: Text('Chats'),
          ),
          Tab(
            child: Text('Status'),
          ),
          Tab(
            child: Text('Calls'),
          )
        ]),
        actions: [
          Icon(Icons.search),
          PopupMenuButton(
              icon: Icon(Icons.more_vert_rounded),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Text('New group'),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Text('New Broadcast'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Text('Linked Devices'),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Settings()));
                          },
                          child: Text('Settings')),
                    ),
                  ])
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt),
          ChatView(),
          StatusView(),
          CallsView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: Icon(ficon),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
