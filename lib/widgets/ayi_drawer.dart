
import 'package:ayi_saskinbakkal/pages/bira.dart';
import 'package:ayi_saskinbakkal/pages/kokteyl.dart';
import 'package:ayi_saskinbakkal/pages/lezzet.dart';
import 'package:ayi_saskinbakkal/pages/puan.dart';
import 'package:ayi_saskinbakkal/pages/rezervasyon.dart';
import 'package:ayi_saskinbakkal/pages/shilasoft.dart';
import 'package:flutter/material.dart';

class AyiDrawer extends StatelessWidget {

  //final Musteri musteri;

  //AyiDrawer(this.musteri);
  AyiDrawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Material(
              elevation: 50,
              shadowColor: Colors.amberAccent,
              color: Colors.amber,
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/ayi-left.png',
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.local_drink),
            title: Text('Biralar'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bira()))
            },
          ),
          ListTile(
            leading: Icon(Icons.local_pizza),
            title: Text('Lezzetler'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Lezzet()))
            },
          ),
          ListTile(
            leading: Icon(Icons.local_bar),
            title: Text('Kokteyller'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Kokteyl()))
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text('Hesabım'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bira()))
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Puanlarım'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Puan()))
            },
          ),
          ListTile(
            leading: Icon(Icons.phone_iphone),
            title: Text('Rezervasyon'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Rezervasyon()))
            },
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Hakkımızda'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShilaSoft()))
            },
          ),
        ],
      ),
    );
  }
}
