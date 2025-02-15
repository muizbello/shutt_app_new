// Packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

// Providers
import 'package:shutt_app/providers/authProvider.dart' as custom_auth;
import 'package:shutt_app/providers/mapProvider.dart';
import 'package:shutt_app/screens/authWrapper.dart';

// Screens
import 'package:shutt_app/services/authService.dart';
import 'package:shutt_app/services/dbService.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
          initialData: null,
        ),
        Provider<dbService>(
          create: (_) => dbService(),
        ),
        ChangeNotifierProvider(create: (_) => custom_auth.AuthProvider()),
        ChangeNotifierProvider(create: (context) => MapProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "ShuttApp",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthWrapper(),
      ),
    );
  }
}
