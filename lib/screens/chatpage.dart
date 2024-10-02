// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:linkedinlearning/widgets/chat_bubble.dart';
import 'package:linkedinlearning/widgets/chat_input.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});
  String? username;
  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    widget.username = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Hi ${widget.username}',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Flexible(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: ((context, index) {
                      return const ChatBubble(
                          message: 'Hi Samuel, this is your message');
                    }))),

            //creating the chat input field
            ChatInput()
          ],
        ),
      ),
    );
  }
}
