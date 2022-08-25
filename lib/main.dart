import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
    Center(
      child: Text('5'),
    ),
    Center(
      child: Text('5'),
    ),
    Center(
      child: Text('6'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.home,
                color: Colors.orange,
              ),
              label: 'fef'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.chartPie,
                color: Colors.orange,
              ),
              label: 'fejf'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.exchange,
                color: Colors.orange,
              ),
              label: 'fejf'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.basketShopping,
                color: Colors.orange,
              ),
              label: 'fejf'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.handshakeSimple,
                color: Colors.orange,
              ),
              label: 'fejf'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
