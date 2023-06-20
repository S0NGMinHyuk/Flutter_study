import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  // 앱 오른쪽 위 디버그 표시 제거
      title: "BBANTO",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        title: const Text("BBANTO"),
        backgroundColor: Colors.amber[700],
        centerTitle: true,  // 타이틀 중앙 배치
        elevation: 0.0,     // 앱 바 그림자 제거
        
        actions: <Widget> [ // 화면 오른쪽 쇼핑카트, 돋보기 위젯 추가
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              print("Shopping cart button is clicked.");
            },
          ),

          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              print("search button is clicked.");
            },
          )
        ],
      ),

      drawer: Drawer(   // 화면 왼쪽 메뉴 위젯 생성
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(  // 왼쪽 메인 유저 프로필 사진
                backgroundImage: AssetImage("assets/송민혁님(운전,민증).jpg"),
                backgroundColor: Colors.white,
              ),

              otherAccountsPictures: <Widget> [   // 오른쪽 다른 유저 프로필 사진
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/송민혁님(운전,민증).jpg"),
                )
              ],

              accountName: Text("Song"),
              accountEmail: Text("poiuy010724@naver.com"),
              onDetailsPressed: () {  // 오른쪽 화살표 생성
                print("arrow is clicked");  
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0)
                  ),
              ),
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: Text("Home"),
              onTap: () {
                print("Home is clicked");
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text("Setting"),
              onTap: () {
                print("Setting is clicked");
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.black,
              ),
              title: Text("Q&A"),
              onTap: () {
                print("Q&A is clicked");
              },
              trailing: Icon(Icons.add),
            ),

            Divider(
              height: 60.0,
              thickness: 0.5,
              color: Colors.grey,
              indent: 20.0,
              endIndent: 20.0,
            )
          ],
        ),
      ),

      body: const Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,   // 글자 가로정렬
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/송민혁님(운전,민증).jpg"),
                radius: 60.0,
              ),
            ),

            Divider(
              height: 60.0,      // 선 위아래 간격이 30px
              thickness: 0.5,   // 선 두께
              color: Color.fromARGB(255, 53, 53, 53),
              endIndent: 30.0,  // 오른쪽 벽과의 거리
            ),

            Text("NAME",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,   // 글자간 간격
            ),
            ),

            SizedBox(   // 두 text 사이 거리 생성
              height: 10.0,
            ),

            Text("BBANTO", 
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold   // 글자 두께 변경
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text("BBANTO POWER LEVEL",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,   // 글자간 간격
            ),
            ),

            SizedBox(   // 두 text 사이 거리 생성
              height: 10.0,
            ),

            Text("14", 
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold   // 글자 두께 변경
            ),
            ),

            SizedBox(
              height: 30.0,
            ),

            Row(
              children: <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("using lightsaber",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
                ),                  
              ],
            ),

            Row(
              children: <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("face hero tattoo",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
                ),                  
              ],
            ),

            Row(
              children: <Widget> [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text("fire flames",
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0,
                ),
                ),
              ],
            ),

          ]
        ),
      )
    );
  }
}
