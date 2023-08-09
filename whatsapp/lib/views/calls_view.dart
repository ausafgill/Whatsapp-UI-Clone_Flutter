import 'package:flutter/material.dart';
import 'package:whatsapp/models/call_models/calllist.dart';
import 'package:whatsapp/models/call_models/callsmodel.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  List<CallsModel> clist = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clist = CallList().getcalls();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: clist.length,
        itemBuilder: (context, pos) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(clist[pos].img.toString())),
                  title: Text(
                    clist[pos].name.toString(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        clist[pos].dateinfo.toString(),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Icon(
                        Icons.call_missed_outgoing,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                ),
              )
            ],
          );
        });
  }
}
