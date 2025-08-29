import 'dart:async';
import 'dart:math';

import 'package:chat/core/models/chat_massage.dart';
import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/chat/chat_service.dart';

class ChatMockService implements ChatService {
  static final List<ChatMessage> _msgs = [
    ChatMessage(
      id: '1',
      text: 'Olá, tudo bem?',
      createdAt: DateTime.now().subtract(Duration(minutes: 10)),
      userId: 'user1',
      userName: 'João',
      userImageURL: "assets/images/avatar.png",
    ),
    ChatMessage(
      id: '2',
      text: 'Sim, tudo bem! E você?',
      createdAt: DateTime.now().subtract(Duration(minutes: 5)),
      userId: 'user2',
      userName: 'Maria',
      userImageURL: "assets/images/avatar.png",
    ),
    ChatMessage(
      id: '3',
      text: 'Estou bem também!',
      createdAt: DateTime.now(),
      userId: 'user1',
      userName: 'João',
      userImageURL: "assets/images/avatar.png",
    ),
  ];

  static MultiStreamController<List<ChatMessage>>? _controller;
  static final _msgsStream = Stream<List<ChatMessage>>.multi((controller) {
    _controller = controller;
    controller.add(_msgs);
  });

  @override
  Stream<List<ChatMessage>> messagesStream() {
    return _msgsStream;
  }

  @override
  Future<ChatMessage> save(String text, ChatUser user) async {
    final newMessage = ChatMessage(
      id: Random().nextDouble().toString(),
      text: text,
      createdAt: DateTime.now(),
      userId: user.id,
      userName: user.name,
      userImageURL: user.imageURL,
    );
    _msgs.add(newMessage);
    _controller?.add(_msgs.reversed.toList());
    return newMessage;
  }
}
