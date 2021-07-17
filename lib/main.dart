/*import 'package:flutter/material.dart';
import 'file:///E:/Flutter%20apps/stocks_app/lib/PAGES/home_page.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "Stocks",
        home : HomePage()
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:stock_app_profile_page/PAGES/home_page.dart';
import 'package:stock_app_profile_page/PAGES/profile.dart';
import 'package:stock_app_profile_page/PAGES/pages.dart';
import 'package:stock_app_profile_page/PAGES/Image_slider.dart';
import 'package:stock_app_profile_page/PAGES/detail_page.dart';
import 'package:stock_app_profile_page/PAGES/login_page.dart';
import 'package:stock_app_profile_page/PAGES/Portfolio.dart';

void main() {
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: "Stocks",
        home : Register()
    );
  }
}
class MyHomePage extends StatefulWidget{
  MyHomePage({Key key}): super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
 int _selectedItem = 0;
 var _pages = [Products(), Portfolio(), HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stocks App"),backgroundColor: Colors.lightBlue),
      body: Center(child: _pages[_selectedItem],),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('HOME'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), title: Text('PORTFOLIO'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_upward_outlined), title: Text('MARKETS'),backgroundColor: Colors.lightBlue),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('PROFILE'),backgroundColor: Colors.lightBlue),
        ],
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
      ),
    );
  }
}



















