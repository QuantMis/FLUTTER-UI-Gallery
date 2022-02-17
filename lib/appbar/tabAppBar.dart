import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Image Appbar",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          titleSpacing: 0,
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
              image: DecorationImage(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1644843521804-74ec147cb7bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Page 1',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Page 2',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Page 3',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Page 4',
              ),
              Tab(
                icon: Icon(Icons.home),
                text: 'Page 5',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildPage("Page 1"),
            buildPage("Page 2"),
            buildPage("Page 3"),
            buildPage("Page 4"),
            buildPage("Page 5"),
          ],
        ),
      ),
    );
  }

  //TAB BAR BODY BUILDER
  Widget buildPage(String text) {
    return Text(text);
  }
}
