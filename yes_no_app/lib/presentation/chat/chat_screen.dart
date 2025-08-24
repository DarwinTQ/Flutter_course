import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/chat/screens/chat/my_message_bubblle.dart';
import 'package:yes_no_app/presentation/chat/screens/chat/her_message_bubblle.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://wallpapers.com/images/featured/demon-slayer-nezuko-linda-47jabawhkl0656pg.jpg',
            ),
          ),
        ),
        title: const Text('Chat - Unknown'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            const Text('Hello'),
            //const Text('World'),
          ],
        ),
      ),
    );
  }
}
