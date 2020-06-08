import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chat/homeScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int _numPage = 3;
  final PageController _pagecontroller = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _bulidPageInd() {
    List<Widget> list = [];
    for (int i = 0; i < _numPage; i++) {
      list.add(i == _currentPage ? _indiccater(true) : _indiccater(false));
    }
    return list;
  }

  Widget _indiccater(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 10,
      width: isActive ? 10 : 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.orange : Color(0XFF7851D3),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                  0.1,
                  0.4,
                  0.7,
                  0.9
                ],
                    colors: [
                  Color(0XFF3594DD),
                  Color(0XFF4536DB),
                  Color(0XFF5036D5),
                  Color(0XFF5816D0),
                ])),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: FlatButton(
                        onPressed: () {
                          _pagecontroller.nextPage(
                              duration: Duration(milliseconds: 600),
                              curve: Curves.ease);
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      height: 400,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pagecontroller,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 18, right: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("asset/onboarding0.png"),
                                    height: 250,
                                    width: 250,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'Chats whit your\nfriend',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Flutter is a rapidly developing framework supported by A few words about methodology',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("asset/onboarding1.png"),
                                    height: 250,
                                    width: 250,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'Live your life Smarter\nwith chat!',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Flutter is a rapidly developing framework supported by A few words about methodology',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Center(
                                  child: Image(
                                    image: AssetImage("asset/onboarding0.png"),
                                    height: 250,
                                    width: 250,
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  'Get a New Apps\nOf Message',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Flutter is a rapidly developing framework supported by A few words about methodology',
                                  style: TextStyle(
                                      wordSpacing: 2,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _bulidPageInd(),
                    ),
                    _currentPage != _numPage - 1
                        ? Expanded(
                            child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: FlatButton(
                              onPressed: () {
                                _pagecontroller.nextPage(
                                    duration: Duration(milliseconds: 600),
                                    curve: Curves.ease);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 22),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ))
                        : Text("")
                  ]),
            ),
          ),
        ),
        bottomSheet: _currentPage == _numPage - 1
            ? Container(
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return HomeScreenchat();
                      }));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Color(0xff5b16d0),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            : Text(''));
  }
}
