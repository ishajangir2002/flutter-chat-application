import 'package:chat_application/pages/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title: Text(
          "Chat Application",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              //Naviagte to search Page
            },
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (String value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: const Text(
                    "New group",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: const Text(
                    "New broadcast",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "New broadcast",
                ),
                PopupMenuItem(
                  child: Text(
                    "Whatsapp Web",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Whatsapp Web",
                ),
                PopupMenuItem(
                  child: Text(
                    "Starred messages",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Starred messages",
                ),
                PopupMenuItem(
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Settings",
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          // automaticIndicatorColorAdjustment: true,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt,
                //color: Colors.white,
              ),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("Status"),
          Text("Calls"),
        ],
      ),
    );
  }
}
