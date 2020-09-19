import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weatherapp/start.dart';
import 'package:weatherapp/about.dart';
import 'package:weatherapp/glossary.dart';
import 'styles.dart';

class OptionsView extends StatefulWidget {
  @override
  _OptionsViewState createState() => _OptionsViewState();
}

class _OptionsViewState extends State<OptionsView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            trailing: Icon(Icons.edit_location, size: 50, color: Colors.black),
            title: Text('تغییر موقیعت', style: Styles.textDefault),
            enabled: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Start(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            trailing: Icon(Icons.pin_drop, size: 45, color: Colors.black),
            title: Text('نشان دادن موقعیت', style: Styles.textDefault),
            subtitle: Text('زیر ساخت'),
          ),
        ),
        Card(
          child: ListTile(
            trailing: Icon(Icons.spellcheck, size: 45, color: Colors.black),
            title: Text('فرهنگ اصطلاحات', style: Styles.textDefault),
            enabled: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Glossary(),
                ),
              );
            },
          ),
        ),
        Card(
          child: ListTile(
            trailing: Icon(Icons.info, size: 45, color: Colors.black),
            title: Text('درباره', style: Styles.textDefault),
            enabled: true,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Options extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('گزینه ها', style: Styles.navBarTitle)),backgroundColor: Styles.header1Color),
        body:OptionsView(),
    );
  }
}