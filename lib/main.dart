import 'package:flutter/material.dart';
import 'package:internet/homepage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<InternetConnectionStatus>(
      create: (_) {
        return InternetConnectionChecker().onStatusChange;
      },
      initialData: InternetConnectionStatus.connected,
      child: const MaterialApp(
        title: 'Connection Checker',
        debugShowCheckedModeBanner: false,
        home: MyHome(),
      ),
    );
  }
}
