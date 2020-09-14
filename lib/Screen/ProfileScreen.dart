import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
        padding: EdgeInsets.all(width * 0.05),
        child: Column(
          children: [
            Container(
              width: width * 0.3,
              child: Row(
                children: <Widget>[
                  Icon(
                    CupertinoIcons.profile_circled,
                    size: width * 0.04,
                  ),
                  SizedBox(
                    width: width * 0.01,
                  ),
                  Text('Pitter Park'),
                  Spacer(
                    flex: 1,
                  ),
                  ButtonTheme(
                    child: RaisedButton(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {},
                      child: Text(
                        '변경하기',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Divider(
                thickness: 1,
              ),
              width: width * 0.3,
            ),
            Container(
              width: width * 0.3,
              child: Row(
                children: <Widget>[
                  Text(
                    '정산 가능 금액',
                    style: TextStyle(
                        fontFamily: 'Jalnan', fontWeight: FontWeight.bold),
                  ),
                  Text(' : 1,304,200\t원'),
                  Spacer(
                    flex: 1,
                  ),
                  ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: RaisedButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Text('정산',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Divider(
                thickness: 1,
              ),
              width: width * 0.3,
            ),
            ButtonTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  '내 정보 수정',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            )
          ],
        ));
  }
}
