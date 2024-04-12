// ignore_for_file: prefer_const_constructors, use_super_parameters

import 'package:flutter/material.dart';

class ChatInterfacePage extends StatefulWidget {
  const ChatInterfacePage({Key? key}) : super(key: key);

  @override
  ChatInterfacePageState createState() => ChatInterfacePageState();
}

class ChatInterfacePageState extends State<ChatInterfacePage> {
  TextEditingController messageController = TextEditingController();
  List<String> messages = [];

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    String messageText = messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        messages.add(messageText);
      });
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with Expert'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return MessageWidget(
                  text: messages[index],
                  isSentByMe: true,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: 'Type your message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String text;
  final bool isSentByMe;

  const MessageWidget({
    required this.text,
    required this.isSentByMe,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSentByMe ? Colors.blueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isSentByMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
