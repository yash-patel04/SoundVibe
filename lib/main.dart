import 'package:SoundVibe/Logo/LogoScreen.dart';
import 'package:flutter/material.dart';

void main() {
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoundVibe',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: LogoScreen(),
      // routes: {
      //   '/liked': (context) => LikedScreen(),
      // },
    );
  }
}
