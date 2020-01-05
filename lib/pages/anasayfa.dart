import 'package:ayi_saskinbakkal/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:ayi_saskinbakkal/blocs/authentication_bloc/bloc.dart';
import 'package:ayi_saskinbakkal/blocs/counter_bloc/bloc.dart';
import 'package:ayi_saskinbakkal/pages/puan.dart';
import 'package:ayi_saskinbakkal/pages/rezervasyon.dart';
import 'package:ayi_saskinbakkal/pages/shilasoft.dart';
import 'package:ayi_saskinbakkal/themes/themes.dart';
import 'package:ayi_saskinbakkal/widgets/ayi_button.dart';
import 'package:ayi_saskinbakkal/widgets/ayi_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bira.dart';
import 'kokteyl.dart';
import 'lezzet.dart';

class AnaSayfa extends StatelessWidget {
  final String name;

  AnaSayfa({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayı Şaşkınbakkal'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(
                LoggedOut(),
              );
            },
          )
        ],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Text(
                'Hoşgeldin $name',
                style: ayiButtonStyle,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Image.asset(
                'assets/ayi.png',
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AyiButton('Biralar',
                        MaterialPageRoute(builder: (context) => Bira())),
                    SizedBox(
                      height: 10,
                    ),
                    AyiButton('Lezzetler',
                        MaterialPageRoute(builder: (context) => Lezzet())),
                    SizedBox(
                      height: 10,
                    ),
                    AyiButton('Kokteyller',
                        MaterialPageRoute(builder: (context) => Kokteyl())),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AyiButton('Rezervasyon',
                        MaterialPageRoute(builder: (context) => Rezervasyon())),
                    SizedBox(
                      height: 10,
                    ),
                    AyiButton('Puanlarım',
                        MaterialPageRoute(builder: (context) => Puan())),
                    SizedBox(
                      height: 10,
                    ),
                    //AyiButton('Çıkış',MaterialPageRoute(builder: (context) => Rezervasyon())),
                    SizedBox(
                      width: 150,
                      height: 40,
                      child: RaisedButton(
                        elevation: 10,
                        color: Colors.black26,
                        onPressed: () {
                          BlocProvider.of<AuthenticationBloc>(context).add(
                            LoggedOut(),
                          );
                        },
                        child: Text(
                          'Çıkış',
                          style: ayiButtonStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Material(
              elevation: 10,
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ShilaSoft())),
                child: Image.asset(
                  'assets/logo.png',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
          ],
        ),

      drawer: AyiDrawer(),
    );
  }
}
