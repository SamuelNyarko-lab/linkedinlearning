import 'package:linkedinlearning/models/author.dart';

class ChatEntity {
  final String id;
  final String timeStamp;
  final String imageUrl;
  final String chatMessage;
  Author author;

  ChatEntity(
      {required this.imageUrl,
      required this.chatMessage,
      required this.id,
      required this.timeStamp,
      required this.author});

  factory ChatEntity.fromJson(Map<String, dynamic> json) {
    return ChatEntity(
        imageUrl: json['imageUrl'],
        chatMessage: json['chatMessage'],
        id: json['id'],
        timeStamp: json['timeStamp'],
        author: Author.fromJson(json['author']));
  }
}
