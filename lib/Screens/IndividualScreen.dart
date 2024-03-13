import 'package:chat_application/Models/Chatmodels.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(widget.chatModel.name),
      ),
    );
  }
}
