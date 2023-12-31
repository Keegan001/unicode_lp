import 'package:app1/pages/registerpage.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'pages/landingpage.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen.withScreenFunction(
        screenFunction: () async {
          return RegScreen();
        },
        duration: 3000,
        splash: Icons.area_chart_outlined,
        splashTransition: SplashTransition.slideTransition,
        //pageTransitionType: PageTransitionType.downToUp,
        backgroundColor: Colors.purpleAccent);
  }
}

/*authstate() {
  FirebaseAuth.instance.authStateChanges().listen(
    (User? user) {
      if (user == null) {
        RegScreen();
      } else {
        MainScreen();
      }
    },
  );
}

if (FirebaseAuth.instance.currentUser != null) {
            return MainScreen();
          } else {
            return RegScreen();
          }
*/
