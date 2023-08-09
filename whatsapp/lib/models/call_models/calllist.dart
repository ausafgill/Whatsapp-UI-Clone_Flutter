import 'package:whatsapp/models/call_models/callsmodel.dart';

class CallList {
  List<CallsModel> getcalls() {
    List<CallsModel> callsListt = [
      CallsModel(
          dateinfo: 'Today,3:08 pm',
          name: 'Saul Goodman',
          img:
              'https://chorus.stimg.co/23936644/saul.jpg?w=525&h=600&auto=compress&cs=tinysrgb&crop=faces&dpr=1.5'),
      CallsModel(
          dateinfo: '1 minute ago',
          name: 'Emma Watson',
          img:
              'https://m.media-amazon.com/images/M/MV5BMTQ3ODE2NTMxMV5BMl5BanBnXkFtZTgwOTIzOTQzMjE@._V1_FMjpg_UX1000_.jpg'),
    ];
    return callsListt;
  }
}
