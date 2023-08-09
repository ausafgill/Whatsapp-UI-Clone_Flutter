import 'package:flutter/material.dart';
import 'package:whatsapp/models/msg_model/msglist.dart';
import 'package:whatsapp/models/msg_model/msgmodel.dart';

class ChatScreen extends StatefulWidget {
  final String img, name;
  ChatScreen({required this.img, required this.name});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<MsgModel> msglist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    msglist = MsgList().getmsgs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(widget.img),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [Text(widget.name)],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.video_call),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.call)
            ],
          )
        ],
      )),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )),
                    child: Center(
                        child: Text(
                      'Hello MY Friend',
                      style:
                          Theme.of(context).textTheme.copyWith().displaySmall,
                    )),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: msglist.length,
                itemBuilder: (context, pos) {
                  // if (pos == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 30,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              msglist[pos].msg.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .copyWith()
                                  .displaySmall,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                msglist[pos].img.toString(),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText: ' Msg',
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 0.0),
                                ),
                              ),
                            ),
                            Icon(Icons.attach_file),
                            Icon(Icons.camera_alt)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.mic),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
