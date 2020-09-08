import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

main() {
  return runApp(MaterialApp(
    title: '소라고동 관리자화면',
    theme: ThemeData(brightness: Brightness.light),
    home: TopView(),
  ));
}

class TopView extends StatefulWidget {
  @override
  _TopViewState createState() => _TopViewState();
}

class _TopViewState extends State<TopView> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        //   toolbarHeight: height * 0.08,
        title: Row(
          children: [
            Text(
              '소라고동',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: width * 0.02),
            ),
            Spacer(
              flex: 1,
            ),
            ButtonTheme(
              height: width * 0.02,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.transparent)),
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {},
                child: Text(
                  '로그아웃',
                  style: TextStyle(fontSize: width * 0.01),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.03),
            )
          ],
        ),
        elevation: 0, //앱바 하단 경계선을 지워준다.
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(width * 0.025),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.01),
                child: TabBar(
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        color: Colors.white),
                    labelColor: Colors.black, //text뿐 아니라 icon의 색상도 자동 변경된다.
                    unselectedLabelColor: Colors.black,
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.01),
                    tabs: [
                      Tab(
                        text: '컨설팅',
                      ),
                      Tab(
                        text: '기록',
                      ),
                      Tab(
                        text: '프로필',
                      )
                    ],
                    controller: _tabController),
              ),
            )),
      ),
      body: TabBarView(
        children: [HomeScreen(), Container(), Container()],
        controller: _tabController,
      ),
    );
  }
}
