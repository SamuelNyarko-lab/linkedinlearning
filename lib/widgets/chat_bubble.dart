import 'package:flutter/material.dart';
import 'package:linkedinlearning/models/chat_entity.dart';

import '../utils/utils.dart';

class ChatBubble extends StatelessWidget {
  final ChatEntity chatEntity;
  final Alignment alignment;
  const ChatBubble({super.key, required this.chatEntity, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        //height: 40,
        width: deviceWidth(context) * 0.7,
        alignment: Alignment.centerLeft,
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomLeft: Radius.circular(5),
          ),
        ),
        margin: padding(24),
        padding: padding(24),
        child: Column(
          children: [
            Text(
              chatEntity.chatMessage,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            // if (chatEntity.imageUrl != null)
            //   SizedBox(
            //       height: 70,
            //       child: Image.network(chatEntity.imageUrl, fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
