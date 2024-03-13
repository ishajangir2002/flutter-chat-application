import 'package:chat_application/Models/Chatmodels.dart';
import 'package:chat_application/Screens/IndividualScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  Chatmodels chatmodel;

  CustomCard({
    super.key,
    required this.chatmodel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Individual(
              chatModel: chatmodel,
            ),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                (chatmodel.isGroup)
                    ? "assets/groups.svg"
                    : "assets/Person1.svg",
                color: Colors.white,
                height: 37,
                width: 37,
              ),
            ),
            title: Text(
              chatmodel.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(
                  Icons.done_all,
                  color: Colors.black,
                ),
                SizedBox(width: 3),
                Text(
                  chatmodel.currentMessage,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            trailing: Text(
              chatmodel.time,
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
