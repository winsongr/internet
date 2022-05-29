import 'package:flutter/material.dart';
import 'package:internet/noconnection.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:provider/provider.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Visibility(
              visible: Provider.of<InternetConnectionStatus>(context) ==
                  InternetConnectionStatus.disconnected,
              child: InternetNotAvail(),
            ),
            Provider.of<InternetConnectionStatus>(context) == InternetConnectionStatus.disconnected
                ? Expanded(
                    child: Center(
                    child: Text(
                      'no connection',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ))
                : Expanded(
                    child: Center(
                    child: Text(
                      'connected',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ))
          ],
        ),
      ),
    );
  }
}
