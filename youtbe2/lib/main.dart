import 'package:flutter/material.dart';
import 'dart:async';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtbe2/add.dart';
import 'package:youtbe2/bib.dart';
import 'package:youtbe2/podpis.dart';
import 'package:youtbe2/shorts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => yout1()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
            child: Image.asset(
          '/images/youtb.png',
          height: 100,
          width: 100,
        )),
      ),
    );
  }
}

class yout1 extends StatefulWidget {
  yout1({Key key}) : super(key: key);

  @override
  State<yout1> createState() => _yout1State();
}

class _yout1State extends State<yout1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xffEf2f2),
          title: Row(
            children: [
              Image.asset(
                '/images/youtb.png',
                height: 10,
                width: 10,
              ),
              Text('Youtube',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 29))
            ],
          ),
          actions: [
            Row(
              children: [
                // Icon(
                //   // FontAwesomeIcons.video,
                //   size: 20,
                //   color: Colors.black45,
                // ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.add_alert,
                  size: 20,
                  color: Colors.black45,
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.search,
                  size: 20,
                  color: Colors.black45,
                ),
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.account_circle,
                  size: 20,
                  color: Colors.black45,
                ),
              ],
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.deepOrange,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(color: Colors.red),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => yout1())));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    // child: Icon(FontAwesomeIcons.home),
                    ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => shorts1())));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    // child: Icon(AnimatedIcons.file),
                    ),
              ),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => shorts4())));
                },
                child: Padding(
                    padding: EdgeInsets.all(8), child: Icon(Icons.circle)),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => shorts2())));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(Icons.video_collection_rounded)),
              ),
              label: 'Подписки',
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => shorts3())));
                },
                child: Padding(
                    padding: EdgeInsets.all(8),
                    // child: Icon(FontAwesomeIcons.folder),
                    ),
              ),
              label: 'Библиотека',
            )
          ],
        ),
        body: slidi(),
      ),
    );
  }
}



class slidi extends StatelessWidget {
  final String imgurl;
  final String name1;
  final String name2;
  final String views;
  final String dur;
  final String userimg;
  final String tuber;

  const slidi(
      {this.imgurl,
      this.name1,
      this.name2,
      this.views,
      this.dur,
      this.userimg,
      this.tuber});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffebf2f2),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(offset: Offset(0.1, 0.1))]),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    '/images/van1.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      child: CircleAvatar(
                        radius: 30,
                        child: Image.asset('/images/123.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ванчопа /ПОЛНЫЙ ФИЛЬМ/КЫРГЫЗ КИНО',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 19,
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              '1.1.tv . ',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '524 тыс. пасмотров . ',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900),
                            ),
                            Text(
                              '5 дней назад',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
