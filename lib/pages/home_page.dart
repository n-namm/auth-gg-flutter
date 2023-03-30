import 'package:auth_firebase_google_flutter/widget/logged_in_widget.dart';
import 'package:auth_firebase_google_flutter/widget/sign_up_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return LoggedInWidget();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Somrthing Went Wrong!'),
              );
            } else {
              return SignUpWidget();
            }
          },
        ),
      );
}
