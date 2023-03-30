
import 'package:auth_firebase_google_flutter/pages/home_page.dart';
import 'package:auth_firebase_google_flutter/widget/logged_in_widget.dart';
import 'package:auth_firebase_google_flutter/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = "MainPage";

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: title,
          theme: ThemeData.dark().copyWith(accentColor: Colors.indigoAccent),
          home: HomePage(),
        ),
      );
}
