import 'package:flutter/material.dart';
import 'package:linkedinlearning/models/chat_entity.dart';

import '../utils/utils.dart';

class ChatBubble extends StatelessWidget {
  final ChatEntity chatEntity;
  final Alignment alignment;
  const ChatBubble(
      {super.key, required this.chatEntity, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        // alignment: Alignment.centerLeft,
        constraints: BoxConstraints(
          maxWidth: deviceWidth(context) * 0.7,
        ),
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        margin: padding(18),
        padding: padding(18),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              chatEntity.chatMessage,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            if (chatEntity.imageUrl != null)
              SizedBox(
                  height: 70,
                  child: Image.network(chatEntity.imageUrl, fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
