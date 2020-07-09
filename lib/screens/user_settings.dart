import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  PreferredSizeWidget appBar(BuildContext context) {
    return PreferredSize(
        child: Container(
          padding: EdgeInsets.all(10),
          height: 70,
          child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF2675EC),
                      size: 21,
                    ))),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('@wdlam',
                    style: TextStyle(
                        color: Color(0xFF2675EC),
                        fontSize: 21,
                        fontFamily: 'Gilroy Bold')))
          ]),
        ),
        preferredSize: Size.fromHeight(70));
  }

  Widget userInfo(context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 72,
                      height: 72,
                      child: Image.asset('assets/images/users/user.png'),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Gloria Mckinney',
                                  style: TextStyle(
                                      fontFamily: 'Gilroy Bold', fontSize: 19),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '+375(29)9638433',
                                  style: TextStyle(
                                      color: Color(0xFF848484),
                                      fontFamily: 'Gilroy SemiBold',
                                      fontSize: 13),
                                ),
                              )
                            ]))
                  ],
                )),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'Account',
                        style:
                            TextStyle(fontFamily: 'Gilroy Bold', fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        '+375(29)9638433',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold', fontSize: 13),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'Tap to change phone number',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold',
                            fontSize: 13,
                            color: Color(0xFF848484)),
                      ),
                    )
                  ],
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 0.7 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFF6F6F6))),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        '@wdlam',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold', fontSize: 13),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'Username',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold',
                            fontSize: 13,
                            color: Color(0xFF848484)),
                      ),
                    ),
                  ],
                )),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 2,
                    width: 0.7 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFF6F6F6))),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Text(
                        'I’m Senior Frontend Developer from Microsoft',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold', fontSize: 13),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'Bio',
                        style: TextStyle(
                            fontFamily: 'Gilroy SemiBold',
                            fontSize: 13,
                            color: Color(0xFF848484)),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }

  Widget settings(context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Settings',
                style: TextStyle(fontSize: 16, fontFamily: 'Gilroy Bold')),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                height: 18,
                child: Image.asset('assets/icons/icon9.png'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Notification and Sounds',
                  style: TextStyle(fontFamily: 'Gilroy SemiBold', fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                height: 18,
                child: Image.asset('assets/icons/icon10.png'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Privaty and Security',
                  style: TextStyle(fontFamily: 'Gilroy SemiBold', fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                height: 18,
                child: Image.asset('assets/icons/icon11.png'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Data and Stronge',
                  style: TextStyle(fontFamily: 'Gilroy SemiBold', fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                height: 18,
                child: Image.asset('assets/icons/icon12.png'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Chat settings',
                  style: TextStyle(fontFamily: 'Gilroy SemiBold', fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                height: 18,
                child: Image.asset('assets/icons/icon13.png'),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Devices',
                  style: TextStyle(fontFamily: 'Gilroy SemiBold', fontSize: 14),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [appBar(context), userInfo(context), settings(context)],
      ),
    ));
  }
}
