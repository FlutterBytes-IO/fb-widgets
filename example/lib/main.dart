import 'package:flutter/material.dart';

import 'package:fb_widgets/fb_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [
        FBWidgets.instance.navigatorObserver,
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            Center(
              child: Text('Running on: $_platformVersion\n'),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.showSnackBar('Hello World');
              },
              child: const Text(
                'Show Snackbar',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.showModalBottomSheet();
              },
              child: const Text(
                'Show Modal Bottom Sheet',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.showBottomSheet();
              },
              child: const Text(
                'Show Bottom Sheet',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.showDialog();
              },
              child: const Text(
                'Show Dialog',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.showNotification();
              },
              child: const Text(
                'Show Notification',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                FBWidgets.flashMessage(
                  'Flash Message',
                );
              },
              child: const Text(
                'Show Flash Message',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
