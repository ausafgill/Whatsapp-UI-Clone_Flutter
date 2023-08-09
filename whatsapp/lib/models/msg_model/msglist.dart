import 'package:whatsapp/models/msg_model/msgmodel.dart';

class MsgList {
  List<MsgModel> getmsgs() {
    List<MsgModel> msglist = [
      MsgModel(
          img:
              'https://www.syfy.com/sites/syfy/files/styles/hero-image--large--computer--alt-1_5x/public/2022/11/kohn.jpg?h=3dbd9eac',
          time: '9:00 am',
          msg: 'Where is my Dog?'),
      MsgModel(
          time: '11:28',
          msg: 'Call me ASAP',
          img:
              'https://www.cnet.com/a/img/resize/ea66ddc9276eef2884da221adc70ed1cf1545951/hub/2021/10/16/11804578-0dbc-42af-bcd1-3bc7b1394962/the-batman-2022-teaser-poster-batman-01-promo.jpg?auto=webp&fit=crop&height=675&width=1200'),
      MsgModel(
          img:
              'https://jurasicgrand.com/uploaded-files/thumbs/candlelight-dinner-at-the-poolside1628926310.jpg',
          msg: 'Dinner at 8?',
          time: '4:00 pm'),
      MsgModel(
          time: '12:00 am',
          msg: 'Lets hangout',
          img:
              'https://variety.com/wp-content/uploads/2013/12/the-wolf-of-wall-street.jpg?w=1000&h=563&crop=1&resize=910%2C511'),
      MsgModel(
          img:
              'https://m.media-amazon.com/images/M/MV5BZDEyN2NhMjgtMjdhNi00MmNlLWE5YTgtZGE4MzNjMTRlMGEwXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_QL75_UY562_CR0,0,380,562_.jpg',
          msg: 'I am Spiderman',
          time: '2:38 am'),
    ];
    return msglist;
  }
}
