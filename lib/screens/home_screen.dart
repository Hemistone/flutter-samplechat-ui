import 'package:flutter/material.dart';
import 'package:myfirst_flutterapp/widgets/category_selector.dart';
import 'package:myfirst_flutterapp/widgets/favorite_contacts.dart';
import 'package:myfirst_flutterapp/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Radius myRadius = Radius.circular(16.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          title: Text(
            'Chats',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: myRadius,
                      topRight: myRadius,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      FavoriteContacts(),
                      RecentChats(),
                    ],
                  )),
            )
          ],
        ));
  }
}
