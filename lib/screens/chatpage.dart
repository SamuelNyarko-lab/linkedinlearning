import 'package:flutter/material.dart';
import 'package:linkedinlearning/utils/utils.dart';
import 'package:linkedinlearning/widgets/chat_bubble.dart';
import 'package:linkedinlearning/widgets/chat_input.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Hi Samuel!',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
                      return ChatBubble(
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
