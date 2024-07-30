import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:tugas_akhir/screen/login_screen.dart';
import 'package:tugas_akhir/screen/splash_screen.dart';
import 'package:tugas_akhir/state_util.dart';
import 'package:flutter/material.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAvwN3glC_VJOAI2H7Cj451xcXKwaX-ScE",
            appId: "1:690148598066:android:b7c1c1680efe1a6c2fb72b",
            messagingSenderId: "690148598066",
            projectId: "ta-smartroof"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(
        child: LoginScreen(),
      ),
    );
  }
}
