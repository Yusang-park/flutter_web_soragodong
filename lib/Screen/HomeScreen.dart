import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  List<bool> btnPush = [true, false];
  Color selectColor = Colors.lightBlue;
  Color unSelectColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.01, vertical: height * 0.01),
        child: Column(
          children: [
            Row(
              children: [
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                    color: btnColor(0),
                    onPressed: () {
                      setState(() {
                        selectBtn(0);
                      });
                    },
                    child: Text(
                      '요청받은 컨설팅',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.01),
                ButtonTheme(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black12),
                      borderRadius: BorderRadius.circular(50)),
                  child: FlatButton(
                      color: btnColor(1),
                      onPressed: () {
                        setState(() {
                          selectBtn(1);
                        });
                      },
                      child: Text(
                        '대기중인 컨설팅',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
            mainScreen()
          ],
        ));
  }

  void selectBtn(int index) {
    tabIndex = index;
    for (int i = 0; i < btnPush.length; i++) btnPush[i] = false;
    btnPush[index] = true;
  }

  Color btnColor(int index) {
    if (btnPush[index] == true) {
      return selectColor;
    }
    return unSelectColor;
  }

  Widget mainScreen() {
    switch (tabIndex) {
      case 0:
        return Tab1();
        break;

      case 1:
        return Tab2();
        break;
      default:
        return Tab1();
    }
  }
}

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Padding(
        padding: EdgeInsets.only(top: height * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                width: width * 0.6,
                child: ButtonTheme(
                  height: height * 0.08,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  buttonColor: Colors.deepPurple,
                  child: RaisedButton(
                    onPressed: () {
                      showDialog(
                          //Stateful Dialog 생성하기
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return RequestDialog();
                            });
                          });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                          size: width * 0.035,
                        ),
                        Text('네이버 쇼핑몰 창업을 하고싶어요.',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.attach_money,
                          color: Colors.orangeAccent,
                          size: width * 0.035,
                        ),
                        Text('50,000원',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.02))
                      ],
                    ),
                  ),
                )),
            //버튼1
            Container(
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                width: width * 0.6,
                child: ButtonTheme(
                  height: height * 0.08,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  buttonColor: Colors.deepPurple,
                  child: RaisedButton(
                    onPressed: () {
                      showDialog(
                          //Stateful Dialog 생성하기
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return RequestDialog();
                            });
                          });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                          size: width * 0.035,
                        ),
                        Text('수입통관시 세금 및 신고에 대한 컨설팅이 필요해요.',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.attach_money,
                          color: Colors.orangeAccent,
                          size: width * 0.035,
                        ),
                        Text('35,000원',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.02))
                      ],
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                width: width * 0.6,
                child: ButtonTheme(
                  height: height * 0.08,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  buttonColor: Colors.deepPurple,
                  child: RaisedButton(
                    onPressed: () {
                      showDialog(
                          //Stateful Dialog 생성하기
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return RequestDialog();
                            });
                          });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                          size: width * 0.035,
                        ),
                        Text('해외 마켓을 운영하고싶은데 조언이 필요해요.',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.attach_money,
                          color: Colors.orangeAccent,
                          size: width * 0.035,
                        ),
                        Text('70,000원',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.02))
                      ],
                    ),
                  ),
                )),
            Container(
                padding: EdgeInsets.symmetric(vertical: height * 0.015),
                width: width * 0.6,
                child: ButtonTheme(
                  height: height * 0.08,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  buttonColor: Colors.deepPurple,
                  child: RaisedButton(
                    onPressed: () {
                      showDialog(
                          //Stateful Dialog 생성하기
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return RequestDialog();
                            });
                          });
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.profile_circled,
                          color: Colors.white,
                          size: width * 0.035,
                        ),
                        Text('스토어에 수익이 나질 않아요.',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Spacer(
                          flex: 1,
                        ),
                        Icon(
                          Icons.attach_money,
                          color: Colors.orangeAccent,
                          size: width * 0.035,
                        ),
                        Text('100,000원',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * 0.02))
                      ],
                    ),
                  ),
                ))
          ],
        ));
  }
}

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class RequestDialog extends StatefulWidget {
  @override
  _RequestDialogState createState() => _RequestDialogState();
}

class _RequestDialogState extends State<RequestDialog> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;
    return Dialog(
      child: SizedBox(
        height: height * 0.7,
        width: width * 0.5,
        child: Padding(
            padding: EdgeInsets.all(width * 0.01),
            child: Column(
              children: [
                Text('요청서 제목'),
                Divider(
                  thickness: 1,
                  //endIndent: 50,
                ),
                Expanded(child: Container(child: Text('요청서 내용'))),
                Divider(
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.black)),
                      buttonColor: Colors.white,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('수락'),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    ButtonTheme(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                          side: BorderSide(color: Colors.black)),
                      buttonColor: Colors.white,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('거절'),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    );
  }
}
