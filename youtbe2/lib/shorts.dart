import 'package:flutter/material.dart';
import 'package:youtbe2/add.dart';
import 'package:youtbe2/main.dart';

void main() {
  runApp(shorts1());
}

class shorts1 extends StatelessWidget {
  shorts1({Key key}) : super(key: key);
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        right: true,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Color(0xffEf2f2),
            title: Row(
              children: [
                Image.asset(
                  '/images/youtb.png',
                  height: 50,
                  width: 50,
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
                  Icon(
                    Icons.connected_tv,
                    size: 20,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    Icons.circle,
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
                    Icons.contacts,
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
                      padding: EdgeInsets.all(8), child: Icon(Icons.home)),
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
                      padding: EdgeInsets.all(8), child: Icon(Icons.face)),
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
                        MaterialPageRoute(builder: ((context) => yout1())));
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
                        MaterialPageRoute(builder: ((context) => yout1())));
                  },
                  child: Padding(
                      padding: EdgeInsets.all(8), child: Icon(Icons.folder)),
                ),
                label: 'Библиотека',
              )
            ],
            backgroundColor: Colors.black,
          ),
        ));
  }
}
