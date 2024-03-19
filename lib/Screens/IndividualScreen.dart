import 'package:chat_application/Models/Chatmodels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Individual extends StatefulWidget {
  Chatmodels chatModel;
  Individual({
    super.key,
    required this.chatModel,
  });

  @override
  State<Individual> createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // leadingWidth: 100,
        leadingWidth: size.width * 0.17,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: size.width * 0.07,
              ),
            ),
            CircleAvatar(
              radius: size.width * 0.045,
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                widget.chatModel.isGroup
                    ? "assets/groups.svg"
                    : "assets/Person1.svg",
                color: Colors.white,
              ),
            )
          ],
        ),
        title: InkWell(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => ));
          },
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatModel.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "last seen today at 12:05",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              //Naviagte to Video call
            },
          ),
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              //Navigate to call page
            },
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "View Contacts",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "View Contacts",
                ),
                PopupMenuItem(
                  child: Text(
                    "Media , links, and docs",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Media , links, and docs",
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
                    "Search",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Search",
                ),
                PopupMenuItem(
                  child: Text(
                    "Mute Notifications",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Mute Notifications",
                ),
                PopupMenuItem(
                  child: Text(
                    "Wallpaper",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  value: "Wallpaper",
                ),
              ];
            },
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(child: TextFormField()),
                  ),
                  CircleAvatar(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
