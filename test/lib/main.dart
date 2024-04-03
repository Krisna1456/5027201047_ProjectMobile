import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 24, 24, 24),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'images/BudgetArms.png',
            width: 120,
            height: 120,
          ),
        ),
        body: _getBody(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Stores',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 0.0),
                Container(
                  padding: EdgeInsets.all(2.0),
                  color: Color.fromARGB(255, 255, 238, 0),
                  child: Image.asset(
                    'images/BudgetArms.png',
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    '2nd Amendment is',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(255, 255, 242, 66),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    'NOT',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(255, 236, 64, 64),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 0.0),
                Container(
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    'For the Rich',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Color.fromARGB(255, 255, 242, 66),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 90.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 200,
                      height: 300,
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              'Slaught-O-Matic',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Color.fromARGB(255, 255, 217, 0),
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              'the Slaught-O-Matic! Priced as low as a can of NiCola and available at vending machines, this single-use pistol is your go-to for protection on a budget. With its no-frills design and easy accessibility. Grab yours today and experience peace of mind knowing you are prepared for whatever comes your way.',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Color.fromARGB(255, 255, 217, 0),
                                fontWeight: FontWeight.w300,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            child: Text(
                              'NO QUESTION ASKED.',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Color.fromARGB(255, 236, 64, 64),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.0), // Adjust spacing between widgets
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: const Color.fromARGB(255, 255, 242, 66),
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'images/Slaught.png',
                          width: 300,
                          height: 300,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Container(
                      child: Text(
                        'You Can \n Get This At',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 255, 217, 0),
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(width: 8.0), // Adjust spacing between widgets
                    Container(
                      child: Image.asset(
                        'images/VendingMachine.png',
                        width: 320,
                        height: 300,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      case 1:
        return Center(
          child: Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 255, 217, 0),
              fontWeight: FontWeight.w900,
            ),
          ),
        );
      case 2:
        return Center(
          child: Text(
            'Coming Soon too...',
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 255, 217, 0),
              fontWeight: FontWeight.w900,
            ),
          ),
        );
      default:
        return SizedBox.shrink();
    }
  }
}
