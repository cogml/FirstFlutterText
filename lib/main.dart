import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //flutter최상위 함수인 runApp불러오기

class MyApp extends StatelessWidget {
  //MyApp커스텀 위젯 생성
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title데이터 위젯
      debugShowCheckedModeBanner: false, //오른쪽 상단의 debug띠 없애기
      title: "Hello",
      theme: ThemeData(
          //theme데이터 위젯
          primarySwatch: Colors.blueGrey //argument불러온다
          ),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  //const Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: new AppBar(
          //이러한 위젯들도 클래스로 생성된 것이므로 new를 쓰거나 안쓰거나 할 수 있다
          title: Text('Hello'),
          centerTitle: true,
          //appbar의 title 가운데 정렬
          backgroundColor: Colors.amber[600],
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('shopping');
              },
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                //사용자 프로필
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/img_profile.png'),
                  backgroundColor: Colors.amber[50],
                ),
                otherAccountsPictures: <Widget>[
                  //다른 계정들 표시
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/img_profile.png'),
                    backgroundColor: Colors.white,
                  )
                ],
                accountName: Text('User'),
                accountEmail: Text('Email'),
                decoration: BoxDecoration(
                    color: Color(0xffced418),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0))),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Color(0xff353535),
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home is clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Color(0xff353535),
                ),
                title: Text('Setting'),
                onTap: () {
                  print('Setting is clicked');
                },
                trailing: Icon(Icons.add),
              )
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //시작점을 같게 정렬
            children: <Widget>[
              Center(
                //center로 감싸주어 가운데로 정렬된다.
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img_gwangju.png'),
                  radius: 60.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[700],
                thickness: 1.0,
                endIndent: 30.0,
              ),
              Text(
                'Nation',
                style: TextStyle(
                  color: Colors.black38,
                  letterSpacing: 1.7,
                ),
              ),
              SizedBox(
                //두 텍스트 사이에 간격 주기
                height: 10.0,
              ),
              Text(
                'KOREA',
                style: TextStyle(
                    color: Colors.black38,
                    letterSpacing: 2.0,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'City',
                style: TextStyle(
                  color: Colors.black38,
                  letterSpacing: 1.7,
                ),
              ),
              SizedBox(
                //두 텍스트 사이에 간격 주기
                height: 10.0,
              ),
              Text(
                'Gwangju',
                style: TextStyle(
                    color: Colors.black38,
                    letterSpacing: 2.0,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text('Light City')
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10.0),
                  Text('Population: 1,500,000')
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/img_korea.gif',
                    height: 50.0,
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Builder(builder: (BuildContext ctx) {
                  return Center(
                    //snackbar만들기
                    child: FlatButton(
                      onPressed: () {
                        Scaffold.of(ctx).showSnackBar(SnackBar(
                          content: Text('snack bar'),
                        ));
                      },
                      child: Text('show me'),
                      color: Colors.amber,
                    ),
                  );
                }
              )
            ],
          ),
        ));
  }
}

class Body extends StatelessWidget {
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text('Bottom'),
    );
  }
}
