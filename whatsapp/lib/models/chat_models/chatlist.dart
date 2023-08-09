import 'package:whatsapp/models/chat_models/chatmodel.dart';

class ChatList {
  List<ChatModel> getChats() {
    List<ChatModel> chatList = [
      ChatModel(
          name: 'John Wick',
          msgdate: '9:00 am',
          recentMsg: 'Where is my Dog?',
          image:
              'https://www.cnet.com/a/img/resize/31287c06237e5b6d72227672d792cdfb1e67cdc5/hub/2023/07/18/adec38b2-8321-43be-a643-17f4a633cf01/john-wick-4-2.jpg?auto=webp&fit=crop&height=675&precrop=1707,959,x26,y33&width=1200'),
      ChatModel(
          name: 'Bruce Wayne',
          msgdate: '11:28 am',
          recentMsg: 'Call me ASAP',
          image:
              'https://upload.wikimedia.org/wikipedia/en/1/19/Bruce_Wayne_%28The_Dark_Knight_Trilogy%29.jpg'),
      ChatModel(
          name: 'Ana D Armas',
          msgdate: '4:00 pm',
          recentMsg: 'Dinner at 8?',
          image:
              'https://media.vanityfair.com/photos/6058a6256c0da06e2048a2ee/master/w_1920,c_limit/927416704'),
      ChatModel(
          name: 'Dicaprio',
          msgdate: '12:00 am',
          recentMsg: 'Lets hangout',
          image:
              'https://cdn.britannica.com/65/227665-050-D74A477E/American-actor-Leonardo-DiCaprio-2016.jpg?w=400&h=300&c=crop'),
      ChatModel(
          name: 'Tobey Maguire',
          msgdate: '2:38 am',
          recentMsg: 'With Great Power Comes Great \nResponsibilty',
          image:
              'https://m.media-amazon.com/images/M/MV5BMTYwMTI5NTM2OF5BMl5BanBnXkFtZTcwODk3MDQ2Mg@@._V1_QL75_UY414_CR5,0,280,414_.jpg'),
    ];

    return chatList;
  }
}
