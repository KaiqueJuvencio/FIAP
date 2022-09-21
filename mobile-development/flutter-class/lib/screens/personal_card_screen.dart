import 'package:flutter/material.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/bird.png'),
          ),
          const SizedBox(height: 10),
          Text(
            "Kaique Costa",
            // style: GoogleFonts.comicNeue(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
              elevation: 8,
              child: ListTile(
                leading: Icon(
                  Icons.phone_android,
                  color: Colors.teal,
                ),
                title: Text(
                  '11 96142-7575',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
              elevation: 8,
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  'kaiquejuvencio@hotmail.com',
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),

          // Container(
          //   width: double.infinity,
          //   height: 250,
          //   color: Colors.blue,
          //   child: Image(
          //     fit: BoxFit.cover,
          //     alignment: Alignment.topCenter,
          //     image: AssetImage('assets/images/ney-dourado.png'),
          //   ),
          // ),
        ],
      ),
    );
  }
}