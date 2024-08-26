import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yojan_tech/features/app/splash_screen/spalsh_screen.dart';
import 'package:yojan_tech/features/user_auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 if(kIsWeb) {
  await Firebase.initializeApp(options: FirebaseOptions(apiKey: "AIzaSyAyMxcXNqZyl_V8ujkjewBWU_xqIMvLlsM",
       authDomain: "yojan-firebase-73e0f.firebaseapp.com",
       projectId: "yojan-firebase-73e0f",
       storageBucket: "yojan-firebase-73e0f.appspot.com",
       messagingSenderId: "368214995826",
       appId: "1:368214995826:web:f256dc572e1e70a42a63eb"));
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}

