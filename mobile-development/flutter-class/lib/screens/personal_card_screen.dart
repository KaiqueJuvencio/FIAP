import 'package:flutter/material.dart';

class PersonalCardScreen extends StatelessWidget {
  static const String id = 'personal_card';
  const PersonalCardScreen({Key? key, required this.arguments}) : super(key: key);

  final PersonalCardScreenArguments arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(arguments.image),
          ),
          const SizedBox(height: 10),
          Text(
            arguments.name,
            // style: GoogleFonts.comicNeue(fontSize: 30, color: Colors.white),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
              elevation: 8,
              child: ListTile(
                leading: const Icon(
                  Icons.phone_android,
                  color: Colors.teal,
                ),
                title: Text(
                  arguments.phone,
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Colors.white,
              elevation: 8,
              child: ListTile(
                leading: const Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  arguments.email,
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

class PersonalCardScreenArguments{
  const PersonalCardScreenArguments({
    required this.image,
    required this.name,
    required this.phone,
    required this.email,
  });

  final String image;
  final String name;
  final String phone;
  final String email;
}