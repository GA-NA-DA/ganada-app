import 'package:flutter/material.dart';
import 'dart:async';

import 'package:ganada/info/infoPage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPage createState() => _LoadingPage();
}

class _LoadingPage extends State<LoadingPage> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => InfoPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('../../web/icons/Icon-192.png'),
      ),
    );
  }
}