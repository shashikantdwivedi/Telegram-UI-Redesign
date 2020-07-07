import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  var categories = [
    'All',
    'Important',
    'Unread',
    'Reade',
    'Archived',
    'Blocked'
  ];
  var allChats = [
    {
      'image': 'assets/images/users/user1.png',
      'name': 'Theresa Webb 🔔',
      'lastActivity': {
        'message': 'Why did you do that?',
        'time': '15:20',
        'send': false,
        'received': true,
        'status': 0
      },
      'unreadMessages': 2,
      'status': 0
    },
    {
      'image': 'assets/images/users/user2.png',
      'name': 'Calvin Flores',
      'lastActivity': {
        'message': 'Hi, bro! Come to my house!',
        'time': '15:13',
        'send': false,
        'received': true,
        'status': 0
      },
      'unreadMessages': 2,
      'status': 1
    },
    {
      'image': 'assets/images/users/user3.png',
      'name': 'Gregory Bell',
      'lastActivity': {
        'message': 'Will you stop ignoring me?',
        'time': '15:13',
        'send': false,
        'received': true,
        'status': 0
      },
      'unreadMessages': 164,
      'status': 0
    },
    {
      'image': 'assets/images/users/user4.png',
      'name': 'Soham Henry 🔔',
      'lastActivity': {
        'message': 'Me: Bro, just fuck off',
        'time': '8:30',
        'send': true,
        'received': false,
        'status': 2
      },
      'unreadMessages': 0,
      'status': 0
    },
    {
      'image': 'assets/images/users/user5.png',
      'name': 'Mother ❤️',
      'lastActivity': {
        'message': 'Me: Yes, of course come, ... ',
        'time': '7:20',
        'send': true,
        'received': false,
        'status': 1
      },
      'unreadMessages': 0,
      'status': 1
    },
    {
      'image': 'assets/images/users/user6.png',
      'name': 'Brother',
      'lastActivity': {
        'message': 'Ok. Good bay!',
        'time': 'Yesterday',
        'send': false,
        'received': true,
        'status': -1
      },
      'unreadMessages': 0,
      'status': 0
    }
  ];
  List<Widget> allSendStatus = [
    Icon(Icons.check, color: Color(0xFFC4C4C4)),
    Icon(Icons.done_all, color: Color(0xFFC4C4C4)),
    Icon(Icons.done_all, color: Color(0xFF2675EC))
  ];
  var activeCategory = 1;

  PreferredSizeWidget appBar() {
    return PreferredSize(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          padding: EdgeInsets.all(10.0),
//          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(6),
//                decoration: BoxDecoration(border: Border.all()),
                child: Text(
                  'Telegram',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontFamily: 'Gilroy Bold',
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
//                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).primaryColor,
                        size: 23,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Theme.of(context).primaryColor,
                        size: 23,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Theme.of(context).primaryColor,
                        size: 23,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(120));
  }

  Widget categoriesSlider() {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(vertical: 10),
//      decoration: BoxDecoration(border: Border.all()),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 133.0,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
              margin: EdgeInsets.symmetric(horizontal: 3),
              decoration: BoxDecoration(
                  color: activeCategory == index
                      ? Color(0xFF2675EC)
                      : Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(18)),
              child: Text(
                categories[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Gilroy SemiBold',
                    fontSize: 16.0,
                    color: activeCategory == index
                        ? Color(0xFFFFFFFF)
                        : Color(0xFF131313)),
              ),
            );
          }),
    );
  }

  Widget chats() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 10),
      // decoration: BoxDecoration(border: Border.all()),
      child: ListView.builder(
          itemCount: allChats.length,
          itemBuilder: (BuildContext context, int index) {
            Map lastActivity = allChats[index]['lastActivity'];
            return Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(10),
              // decoration: BoxDecoration(border: Border.all()),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(children: [
                    Container(
                      width: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25)),
                      child: Image.asset(allChats[index]['image']),
                    ),
                    Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                allChats[index]['name'],
                                style: TextStyle(
                                    fontFamily: 'Gilroy Bold',
                                    fontSize: 19,
                                    color: Color(0xFF131313)),
                              ),
                            ),
                            Container(
                              width: 160,
                              margin: EdgeInsets.symmetric(vertical: 2),
                              child: Text(
                                lastActivity['message'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'Gilroy Bold',
                                    fontSize: 12,
                                    color: lastActivity['send'] || lastActivity['status'] == -1 
                                        ? Color(0xFF848484)
                                        : Color(0xFF2675EC)),
                              ),
                            )
                          ],
                        )),
                  ])),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                              lastActivity['time'],
                              style: TextStyle(
                                  fontFamily: 'Gilroy Medium',
                                  fontSize: 13,
                                  color: Color(0xFF848484)),
                            )),
                        lastActivity['send']
                            ? (lastActivity['status'] != 3
                                ? Container(
                                    margin: EdgeInsets.symmetric(vertical: 2),
                                    child:
                                        allSendStatus[lastActivity['status']])
                                : Container())
                            : (allChats[index]['unreadMessages'] != 0
                                ? Container(
                                    margin: EdgeInsets.symmetric(vertical: 2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Color(0xFF2675EC)),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 7),
                                    child: Text(
                                      allChats[index]['unreadMessages']
                                          .toString(),
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Gilroy Medium',
                                          fontSize: 11),
                                    ))
                                : Container())
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: appBar(),
      body: Column(
        children: [categoriesSlider(), Expanded(child: chats())],
      ),
    ));
  }
}