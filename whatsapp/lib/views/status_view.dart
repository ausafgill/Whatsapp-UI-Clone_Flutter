import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_model/statuslist.dart';
import 'package:whatsapp/models/status_model/statusmodel.dart';

class StatusView extends StatefulWidget {
  const StatusView({super.key});

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  List<StatusModel> statuslist = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    statuslist = StatusList().getstatus();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
                itemCount: statuslist.length,
                itemBuilder: (context, pos) {
                  if (pos == 0) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 5, left: 18),
                          child: Text(
                            'Recent Updates',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith()
                                .headlineLarge,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          leading: Container(
                            height: 100,
                            width: 80,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.teal, width: 2)),
                            child: CircleAvatar(
                              radius: 28,
                              backgroundImage:
                                  NetworkImage(statuslist[pos].img.toString()),
                            ),
                          ),
                          title: Text(
                            statuslist[pos].name.toString(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          subtitle: Text(
                            statuslist[pos].datetime.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        )
                      ],
                    );
                  } else if (pos == 1) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 5, left: 18),
                          child: Text(
                            'Recent Viewed',
                            style: Theme.of(context)
                                .textTheme
                                .copyWith()
                                .headlineLarge,
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                NetworkImage(statuslist[pos].img.toString()),
                          ),
                          title: Text(
                            statuslist[pos].name.toString(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          subtitle: Text(
                            statuslist[pos].datetime.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 28,
                            backgroundImage:
                                NetworkImage(statuslist[pos].img.toString()),
                          ),
                          title: Text(
                            statuslist[pos].name.toString(),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          subtitle: Text(
                            statuslist[pos].datetime.toString(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                        const Divider(),
                      ],
                    );
                  }
                }))
      ],
    );
  }
}
