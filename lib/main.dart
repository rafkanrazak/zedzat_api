import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> prdcts = [
    "Finance",
    'Education',
    'Insurance',
    'Doctors',
    "Finance",
    'Education',
    'Insurance',
    'Doctors'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.abc_outlined),
            Text(
              'ZEDZAT',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // 1st Row
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      weight: 25,
                    ),
                    Text(
                      'Govindapuram, Kozhikode, Kerala, India',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    'assets/images/k.jpg',
                    height: 200,
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Product',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Service',
                            style: TextStyle(color: Colors.black),
                          ),
                          style:
                              ElevatedButton.styleFrom(primary: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              child: GridView.builder(
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10, crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(82, 158, 158, 158),
                            radius: 30,
                            child: Image.asset(
                              'assets/images/mo1.png',
                              height: 40,
                            ),
                          ),
                          Text(prdcts[index])
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black),
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.percent), label: 'Offers'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Rewards'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
