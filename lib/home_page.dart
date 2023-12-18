import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Calculator'),
        centerTitle: true,
        backgroundColor: Colors.red.shade900,
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/love1.jpg',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.amber.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter You Name",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.favorite,
                    size: 60,
                    color: Colors.red.shade900,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.red.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.amber.shade900, width: 2.0),
                          borderRadius: BorderRadius.circular(50.0)),
                      hintText: "Enter Your Partner Name",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {},
                          child: Text('Calculate')),
                      TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.pink.shade400,
                            padding: const EdgeInsets.all(16.0),
                            textStyle: const TextStyle(fontSize: 17),
                          ),
                          onPressed: () {},
                          child: Text('Try Again'))
                    ],
                  ),
                  Visibility(
                      child: Stack(
                    children: [
                      Positioned(
                          child: Icon(
                        Icons.favorite,
                        size: 255,
                        color: Colors.red.shade900,
                      )),
                      Positioned(
                          top: 90,
                          left: 70,
                          child: Text(
                            '100%',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ))
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
