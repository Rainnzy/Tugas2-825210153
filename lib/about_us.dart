import 'package:flutter/material.dart';
import 'countdown.dart';
import 'stopwatch.dart';

class AboutUs extends StatefulWidget {
  @override
  State createState() => AboutState();
}

class AboutState extends State<AboutUs> {

  void _movetocountdown(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => Countdown()),
    );
  }

  void _movetostopwatch(){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => StopWatch()),
    );
  }

  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("About"),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 75,
                  child: Image.asset('fti.png'),
                ),
                Container(
                  width: 200,
                  height: 75,
                  child: Image.asset('si.png'),
                ),
                SizedBox(
                  height: 60,
                ),
                Text("Albertus Ferdinand",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,)),
                Text("Sistem Informasi",
                    style: TextStyle(fontSize: 16,)),
                Text("825210153",
                    style: TextStyle(fontSize: 16,)),
              ],
            ),
          ]
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        height: 60,
        child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: TextButton(
                    onPressed: _movetostopwatch,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.punch_clock, color: Colors.white,),
                        Text("Stopwatch", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: TextButton(
                    onPressed: _movetocountdown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.watch_later, color: Colors.white,),
                        Text("Timer", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.blueAccent,
                  width: 100,
                  child: TextButton(
                    onPressed: null,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 30,),
                        Text("About", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}