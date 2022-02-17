import 'package:flutter/material.dart';

class ElegantAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Elegant Appbar",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            //action for button goes here
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //action for button goes here
            },
          ),
          IconButton(
            icon: Icon(Icons.notification_important),
            onPressed: () {
              //action for button goes here
            },
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [Colors.green, Colors.red],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
        ),
      ),
    );
  }
}
