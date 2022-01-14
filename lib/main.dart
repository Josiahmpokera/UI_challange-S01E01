//UI Design Interface for Pinterest Design

import 'package:flutter/material.dart';
import 'second_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  //Move into the Next Scree


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            SizedBox(
              height: 35,
              width: 35,
              child: Image.asset('assets/facebook.png'),
            ),
            const SizedBox(
              width: 30,
            )
          ],
          leading: const SizedBox(
              height: 20,
              width: 20,
              child: Icon(
                Icons.menu_open_sharp,
                color: Colors.black,
                size: 40,
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          backgroundColor: Colors.black,
          elevation: 0,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              title: Text("Bank"),
              icon: Icon(
                Icons.account_balance,
                color: Colors.black,
              ),
            ),

            //New BottomNavigation
            BottomNavigationBarItem(
              title: Text("Add"),
              icon: Icon(
                Icons.account_balance,
                color: Colors.black,
              ),
            ),

            //Add new BottomNavigatioBarItem
            BottomNavigationBarItem(
              title: Text("Add"),
              icon: Icon(
                Icons.account_balance,
                color: Colors.black,
              ),
            ),

            BottomNavigationBarItem(
              title: Text("Add"),
              icon: Icon(
                Icons.account_balance,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: MainHome(),
      ),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Row(
            children: const [
              Text(
                "Hello James",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: Icon(
                  Icons.announcement,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: const EdgeInsets.only(left: 20, top: 8),
          child: const Text(
            "Karibu  Orix Home.",
            style: TextStyle(color: Colors.blueGrey, fontSize: 17),
          ),
        ),

        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text(
                    "Your",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Wellcome",
                    style: TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xF3D3EFEF),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  child: Row(
                    children: const [
                      Text(
                        "Add  ",
                        style: TextStyle(color: Colors.teal),
                      ),
                      Icon(
                        Icons.add_circle,
                        color: Colors.teal,
                      )
                    ],
                  ),
                  padding: EdgeInsets.all(8),
                ),
              ),
            ],
          ),
        ),
        //New Container for the Grid
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: (){
                  print('Button Clicked!');
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const SecondScreen()));
                },
                child: Container(
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Center(
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/beds.png',
                            height: 70,
                          ),
                          const Text(
                            "Living Room",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "5 devices",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //New Container

              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFAF5DAEE),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 30),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/kitchen-tools.png',
                          height: 70,
                        ),
                        const Text(
                          "Living Room",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "5 devices",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //New Rows of Container

        SizedBox(
          height: 20,
        ),

        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: Color(0xFAE5B4EF),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Center(
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/double-bed.png',
                          height: 70,
                        ),
                        const Text(
                          "Bedroom",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "6 devices",
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //New Container

              Container(
                width: 160,
                decoration: BoxDecoration(
                  color: const Color(0xFAF5DAEE),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 30),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/printer.png',
                          height: 70,
                        ),
                        const Text(
                          "Office",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "10 devices",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

