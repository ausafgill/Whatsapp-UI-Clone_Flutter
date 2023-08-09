import 'package:flutter/material.dart';
import 'package:whatsapp/views/chat_screen.dart';

import '../models/chat_models/chatmodel.dart';
import 'package:whatsapp/models/chat_models/chatlist.dart';

class ChatView extends StatefulWidget {
  ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  List<ChatModel> chatlist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatlist = ChatList().getChats();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatlist.length,
      itemBuilder: (context, pos) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                              img: chatlist[pos].image.toString(),
                              name: chatlist[pos].name.toString())));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        NetworkImage(chatlist[pos].image.toString()),
                  ),
                  title: Text(
                    chatlist[pos].name.toString(),
                    style: Theme.of(context).textTheme.copyWith().titleLarge,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Icon(pos % 2 == 0 ? Icons.done : Icons.done_all,
                            color: pos % 2 == 0 ? Colors.grey : Colors.blue),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          chatlist[pos].recentMsg.toString(),
                          style:
                              Theme.of(context).textTheme.copyWith().bodyMedium,
                        )
                      ],
                    ),
                  ),
                  trailing: Text(
                    chatlist[pos].msgdate.toString(),
                    style: Theme.of(context).textTheme.copyWith().bodySmall,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
