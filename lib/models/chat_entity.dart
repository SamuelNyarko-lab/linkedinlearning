import 'package:linkedinlearning/models/author.dart';

class ChatEntity {
  final String username;
  final String id;
  final int timeStamp;
  Author author;

  ChatEntity({required this.id, required this.timeStamp, required this.username, required this.author});
}
