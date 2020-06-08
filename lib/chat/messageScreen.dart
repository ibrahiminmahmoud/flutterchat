import 'package:chat/chat/usersScreen.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// You Curren User

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageurl: 'asset/photo1.jpg',
);
// User 
final User abba = User(
  id: 1,
  name: 'Abba',
  imageurl: 'asset/photo1.jpg',
);
final User ibrahim = User(
  id: 2,
  name: 'Ibrahim',
  imageurl: 'asset/photo2.jpg',
);
final User ali = User(
  id: 3,
  name: 'Ali',
  imageurl: 'asset/photo3.jpg',
);
final User sami = User(
  id: 4,
  name: 'Sami',
  imageurl: 'asset/photo4.jpg',
);
final User omer = User(
  id: 5,
  name: 'Omer',
  imageurl: 'asset/photo5.jpg',
);
final User ahmud = User(
  id: 6,
  name: 'Ahmud',
  imageurl: 'asset/photo6.jpg',
);



//Favorit contacts

List<User> favorite = [abba , ibrahim , ali , omer , sami,ahmud];

// Exampl chats on home SCreen

List<Message> chats = [
  Message(
    sender: ahmud,
    time: '5:10 AM',
    text: 'Hey , how\'s it going what did do today',
    isLiked: false,
    unread: true,
  ),
   Message(
    sender: abba,
    time: '5:40 AM',
    text: 'Hey , how\'s it going what abut todey abba',
    isLiked: false,
    unread: true,
  ),
   Message(
    sender: ali,
    time: '8:30 AM',
    text: 'Hey ,  ali how\'s it today',
    isLiked: true,
    unread: true,
  ),
   Message(
    sender: ibrahim,
    time: '5:30 AM',
    text: 'Hey , how\'s it going what did do learn ',
    isLiked: false,
    unread: true,
  ),
   Message(
    sender: sami,
    time: '5:40 AM',
    text: 'Hey , sami how\'s it going what abut todey abba',
    isLiked: false,
    unread: true,
  ),
   Message(
    sender: omer,
    time: '8:30 AM',
    text: 'Hey ,  ali how\'s it today',
    isLiked: true,
    unread: true,
  ),
];