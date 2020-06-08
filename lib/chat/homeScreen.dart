import 'package:chat/Widdet/CategorySelecter.dart';
import 'package:chat/Widdet/favoriteContacts.dart';
import 'package:chat/chat/messageScreen.dart';
import 'package:flutter/material.dart';

class HomeScreenchat extends StatefulWidget {
  @override
  _HomeScreenchatState createState() => _HomeScreenchatState();
}

class _HomeScreenchatState extends State<HomeScreenchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 25,
        ),
        title: Center(
          child: Text(
            'Chat',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 25,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelecter(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.0),
                    topRight: Radius.circular(28.0),
                  )),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28.0),
                            topRight: Radius.circular(28.0),
                          )),
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: chats.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Message chat = chats[index];
                            return Container(
                              margin: EdgeInsets.only(top: 5.0, bottom:5.0, right:10),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      
                                        
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage(chat.sender.imageurl),
                                        ),
                                      
                                      SizedBox(width: 10.0,),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            chat.sender.name,
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey,
                                              ),

                                          ),
                                          
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.45,
                                            child: Text(
                                              chat.text,
                                              style: TextStyle(
                                                
                                                fontWeight: FontWeight.w600,
                                                color: Colors.blueGrey,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Text(chat.time),
                                      Text('NEW'),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
