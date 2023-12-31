import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final String email = FirebaseAuth.instance.currentUser!.email.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Container(
              alignment: Alignment.center,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 100,
                  child: SvgPicture.asset(
                    'assets/person.svg',
                    height: 180,
                    width: 180,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: Card(
              child: Text(
                '\n Your e-mail is $email',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
