import 'package:chat_application/CustomUI/CustomCard.dart';
import 'package:chat_application/Models/Chatmodels.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Chatmodels> chats = [
    // index = 0
    Chatmodels(
      name: 'Prgya',
      icon: 'Person1.svg',
      isGroup: false,
      time: '5:00',
      currentMessage: 'Hi prgya',
    ),
    //1
    Chatmodels(
      name: 'Prgya1',
      icon: 'Person1.svg',
      isGroup: false,
      time: '5:00',
      currentMessage: 'Hi prgya',
    ),
    //2
    Chatmodels(
      name: 'Group Name',
      icon: 'groups.svg',
      isGroup: true,
      time: '5:00',
      currentMessage: 'Hi everyone',
    ),
    Chatmodels(
      name: 'Prgya2',
      icon: 'Person1.svg',
      isGroup: true,
      time: '5:08',
      currentMessage: 'Hi prgya2',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},

        child: Icon(
          Icons.chat,
        ),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => CustomCard(
          chatmodel: Chatmodels(
            name: chats[index].name,
            icon: chats[index].icon,
            isGroup: chats[index].isGroup,
            time: chats[index].time,
            currentMessage: chats[index].currentMessage,
          ),
        ),
      ),
    );
  }
}
