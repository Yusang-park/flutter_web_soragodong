import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecordScreen extends StatefulWidget {
  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  int tabIndex = 0;
  List<bool> btnPush = [true, false];
  Color selectColor = Color(0xFF2E83F6);
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
                      '나의 컨설팅 기록',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.01),
                // ButtonTheme(
                //   shape: RoundedRectangleBorder(
                //       side: BorderSide(color: Colors.black12),
                //       borderRadius: BorderRadius.circular(50)),
                //   child: FlatButton(
                //       color: btnColor(1),
                //       onPressed: () {
                //         setState(() {
                //           selectBtn(1);
                //         });
                //       },
                //       child: Text(
                //         '대기중인 컨설팅',
                //         style: TextStyle(color: Colors.white),
                //       )),
                // ),
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(width * 0.01),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: height * 0.015),
              width: width * 0.6,
              child: ButtonTheme(
                height: height * 0.08,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                buttonColor: Colors.deepPurple[300],
                child: RaisedButton(
                  onPressed: () {
                    // showDialog(
                    //     //Stateful Dialog 생성하기
                    //     context: context,
                    //     builder: (context) {
                    //       // return StatefulBuilder(builder:
                    //       //     (BuildContext context, StateSetter setState) {
                    //       //   return RequestDialog();
                    //       // });
                    //     });
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
                      Text('50,000원 ~',
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.02))
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
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
