import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/pages/home_page.dart';
import 'package:recipe_app/pages/login_page.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User?>(
      future: FirebaseAuth.instance.authStateChanges().first,
      builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // show a loading indicator while waiting for the authentication state
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasData && snapshot.data != null) {
          // user is authenticated, navigate to home page
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          });
        } else {
          // user is not authenticated, navigate to login page
          WidgetsBinding.instance!.addPostFrameCallback((_) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          });
        }

        // return an empty container to satisfy the build method
        return Container();
      },
    );
  }
}
