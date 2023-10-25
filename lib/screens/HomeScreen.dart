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
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Mogadishu,SO',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w600,height: 1.5),
                  children: [
                    TextSpan(
                      text: '\nupdated 5:45 AM EAT , 25/10/2023',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300,height:1.5),
                    ),
                    TextSpan(
                      text: '\n20.9°',
                      style: TextStyle(fontSize: 34, fontWeight: FontWeight.w900,height:2),
                    ),
                    TextSpan(
                      text: 'C',
                      style: TextStyle(fontSize: 34, fontWeight: FontWeight.w300,height:3),
                    )
                    ,
                    TextSpan(
                      text: '\n Light Rain ',
                      style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300,),
                    ),
                  ]
                ),
                textAlign: TextAlign.center,
              ),
              IconButton(
                  onPressed : (){},
                  icon : Icon(Icons.refresh,size:40)
                )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black.withOpacity(0.8),
        onPressed: () {
          showDialog(
            context : context,
            builder : (context){
              return AlertDialog(
                title : Text('🌦️ $appName',style:TextStyle(fontSize : 24),),
                content : Text('Weather app is application shows you'),
                actions : [
                  TextButton(
                    child :Text('ok, go it'),
                    onPressed : (){
                      Navigator.pop(context);
                    }
                  )
                ]
              );
            }
          );
        },
        child: Icon(
          Icons.info,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
