import 'package:kaiteki/model/fediverse/chat.dart';
import 'package:kaiteki/model/fediverse/chat_message.dart';

abstract class ChatSupport {
  Future<Iterable<Chat>> getChats();

  Future<ChatMessage> postChatMessage(Chat chat, ChatMessage message);

  Future<Iterable<ChatMessage>> getChatMessages(Chat chat);
}