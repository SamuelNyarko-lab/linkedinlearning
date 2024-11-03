// ignore_for_file: must_be_immutable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linkedinlearning/models/author.dart';
import 'package:linkedinlearning/models/chat_entity.dart';
import 'package:linkedinlearning/widgets/chat_bubble.dart';
import 'package:linkedinlearning/widgets/chat_input.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});
  String? username;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatEntity> messages = [];
  _loadMessages() async {
    final response = await rootBundle.loadString('assets/chat_data.json');
    final List<dynamic> decodedList = jsonDecode(response) as List;

    final List<ChatEntity> chatMessages = decodedList.map((e) {
      return ChatEntity.fromJson(e);
    }).toList();
    setState(() {
      messages = chatMessages;
    });
    // print(chatMessages);
  }

  @override
  void initState() {
    // TODO: implement initState
    _loadMessages();
    super.initState();
  }

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
                    itemCount: messages.length,
                    itemBuilder: ((context, index) {
                      return ChatBubble(
                        chatEntity: ChatEntity(
                            imageUrl: messages[index].imageUrl,
                            chatMessage:
                                'Hello this is ${messages[index].author.username}',
                            id: messages[index].id,
                            timeStamp: messages[index].timeStamp,
                            author:
                                Author(username: widget.username.toString())),
                      );
                    }))),

            //creating the chat input field
            ChatInput()
          ],
        ),
      ),
    );
  }
}
