import 'package:ayi_saskinbakkal/themes/themes.dart';
import 'package:flutter/material.dart';

class Kokteyl extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(padding: EdgeInsets.all(10),),
            Text('Mojito', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            Padding(padding: EdgeInsets.all(10),),
            Image.asset('assets/mojitojpg.jpg', height: 400, width: 400,fit: BoxFit.cover,),
            Padding(padding: EdgeInsets.all(10),),
            Text('Manhattan', textAlign: TextAlign.center, style: TextStyle(fontSize: 20),),
            Padding(padding: EdgeInsets.all(10),),
            Image.asset('assets/manhattan.jpg', height: 400, width: 400, fit: BoxFit.cover,),
            Padding(padding: EdgeInsets.all(10),),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Geri dön', style: floatingButtonStyle,textAlign: TextAlign.center,),
        onPressed: () => Navigator.pop(context),
        backgroundColor: Colors.red,
      ),

    );
  }
}