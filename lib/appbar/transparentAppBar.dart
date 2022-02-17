import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Transparent Appbar",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: BackButton(),
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
        ),
        body: Image.network(
            'https://images.unsplash.com/photo-1644843521804-74ec147cb7bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity));
  }
}
