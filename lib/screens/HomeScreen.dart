import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  final String appName;
  HomeScreen({required this.appName});
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          '🌦️ $appName',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.pin_drop_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://ubuntuhandbook.org/wp-content/uploads/2021/07/M-Maggs-pixabay.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken)),
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Welcome to',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300,height: 1.5),
              children: [
                TextSpan(
                  text: '\nCloud $appName 🌦️',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600),
                )
              ]
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.8),
        onPressed: () {},
        child: Icon(
          Icons.info,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
