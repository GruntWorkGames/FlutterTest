import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const listTextStyle = TextStyle(
        fontWeight: FontWeight.bold, fontSize: 33, color: Colors.white);
    const listTextMargin = EdgeInsets.fromLTRB(15, 8, 0, 8);

    Container createContainer(String name) {
      return Container(
          margin: listTextMargin,
          child: Text(
            name,
            style: listTextStyle,
          ));
    }

    return MaterialApp(
        checkerboardOffscreenLayers: false,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(40, 41, 59, 1),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(40, 41, 59, 0.5),
              title: const Text('Dashboard'),
            ),
            drawer: Drawer(
              backgroundColor: const Color.fromARGB(255, 34, 35, 52),
              child: ListView(
                children: [
                  const DrawerHeader(
                      margin: EdgeInsets.all(0),
                      child: Text("DEMO",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: Colors.white))),
                  createContainer("Dashboard"),
                  createContainer("Tasks"),
                  createContainer("Web Links"),
                  createContainer("Messaging"),
                  createContainer("Trip Info"),
                  createContainer("Trailers"),
                  createContainer("Pay Info"),
                  createContainer("Scores"),
                  createContainer("Attendance"),
                  createContainer("Certified RED"),
                  createContainer("eLog"),
                  createContainer("InfoCenter"),
                  createContainer("News"),
                  createContainer("Directory"),
                  createContainer("Profile"),
                  createContainer("Settings"),
                  createContainer("Log Out"),
                  Container(
                    margin: const EdgeInsets.fromLTRB(45, 20, 0, 20),
                    child: const Text("V0.0.0"),
                  )
                ],
              ),
            ),
            body: SafeArea(
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: IconButton(
                                icon: Image.asset('assets/InfoCenter.png'),
                                iconSize: 100,
                                onPressed: () {})),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: IconButton(
                                icon: Image.asset('assets/Messages.png'),
                                iconSize: 100,
                                onPressed: () {
                                  // Navigate to Screen B when the button is pressed
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ListScreen()),
                                  );
                                })),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: IconButton(
                                icon: Image.asset('assets/News.png'),
                                iconSize: 100,
                                onPressed: () {})),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: const Image(
                              image: AssetImage('assets/background1.png'),
                            ))
                      ])
                ])))));
  }
}
