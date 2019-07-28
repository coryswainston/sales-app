import 'package:flutter/material.dart';
import 'placeholder_widget.dart';
import 'customers_widget.dart';
import 'map_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'SalesRoutes'),
      theme: ThemeData.dark(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;
  final List<Widget> _pages = [
    MapWidget(),
    CustomersWidget(),
    PlaceholderWidget(Colors.green),
    PlaceholderWidget(Colors.pink),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.calendar_today), onPressed: _toCalendar,)
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            title: new Text('Map'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Customers'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Leaders')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            title: Text('Feed')
          )
        ]
      )
    );
  }

  void _toCalendar() {
    return;
  }

  void _onTabTapped(int i) {
    setState(() {
      _currentIndex = i;
    });
  }
}
