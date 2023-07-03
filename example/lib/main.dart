import 'package:account_saver_against_uninstall/account_saver_pigeon_generated.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:account_saver_against_uninstall/account_saver_against_uninstall.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _accountSaverAgainstUninstallPlugin = AccountSaverAgainstUninstall();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _accountSaverAgainstUninstallPlugin.getPlatformVersion() ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Running on: $_platformVersion\n'),
              ElevatedButton(onPressed: () async {
                IAccountSaver().init(1, 3, 0, true);
                var selectAccount = await  IAccountSaver().selectAccount(0, "123");
                debugPrint(selectAccount.toString());
              }, child: Text("选择测试账号")),
              ElevatedButton(onPressed: (){
                IAccountSaver().init(1, 3, 0, true);
                IAccountSaver().saveAccount(0, "123","test1","pw1");
              }, child: Text("保存测试账号"))
            ],
          )
        ),
      ),
    );
  }
}
