import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/img/welcome.png"),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Welcome ♥ Enjoy',
                  style: TextStyle(fontSize: 30),
                )),
            SizedBox(
              height: 100,
            ),
            Icon(
              Icons.qr_code,
              size: 100,
              color: Colors.white,
            )
          ],
        )),
      ),
    );
  }
}
