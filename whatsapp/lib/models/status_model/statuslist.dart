import 'package:whatsapp/models/status_model/statusmodel.dart';

class StatusList {
  List<StatusModel> getstatus() {
    List<StatusModel> statusListt = [
      StatusModel(
          datetime: '10:20 pm',
          img:
              'https://www.looper.com/img/gallery/oppenheimer-review-bigger-than-the-bomb/intro-1689779561.webp',
          name: 'Cillian Murphy'),
      StatusModel(
          datetime: '12:00 am',
          img:
              'https://hips.hearstapps.com/hmg-prod/images/margot-robbie-attends-a-photocall-on-july-13-2023-in-london-news-photo-1689758035.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*',
          name: 'Margot Robbie'),
      StatusModel(
          datetime: '4:00 pm',
          img:
              'https://hips.hearstapps.com/hmg-prod/images/cillian-murphy-christoper-nolan-oppenheimer-64ba4939a22f0.jpg?crop=1.00xw:0.845xh;0,0.135xh&resize=1200:*',
          name: 'Christopher Nolan'),
    ];
    return statusListt;
  }
}
