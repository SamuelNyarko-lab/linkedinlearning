// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:linkedinlearning/models/author.dart';
import 'package:linkedinlearning/models/chat_entity.dart';

class ChatInput extends StatelessWidget {
  final Function(ChatEntity) onSubmit;
  TextEditingController chatInputController = TextEditingController();
  ChatInput({super.key, required this.onSubmit});

  onSendButton() {
    final newMessage = ChatEntity(
      chatMessage: chatInputController.text.trim(),
      id: '23',
      timeStamp: DateTime.now().microsecondsSinceEpoch.toString(),
      author: Author(username: 'Sam'),
    );
    onSubmit(newMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: TextField(
            controller: chatInputController,
            keyboardType: TextInputType.multiline,
            style: const TextStyle(
              color: Colors.white,
            ),
            maxLines: 3,
            minLines: 1,
            cursorColor: Colors.white,
            decoration: const InputDecoration(
                hintText: 'Type your message',
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          )),
          IconButton(
            onPressed: () {
              onSendButton();
            },
            icon: const Icon(
              Icons.send,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
