import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  void _launchURL() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'Support@developmentmonitors.com',
      query: 'subject=Community Weatherboard App Feedback&body= please write your feedback here',
    );
    var url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print( 'Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('در باره این برنامه', style: Styles.navBarTitle)),backgroundColor: Styles.header1Color),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/DevelopmentLogo.png',width: 200,height: 120),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,15.0),
              child: Text(                                                                   //name of the App
                'این برنامه موبایل برای جامعه ، یکی از کمک های تخنیکی پروزه در افغانستان بوده که انکشاف آن توسط بانک جهانی حمایت مالی شده',
                style:Styles.textDefault,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0,15.0,10.0,15.0),
              child: Text(                                                                   //name of the App
                'برای معلومات بیشتر لطفا سوالات و پیشنهادات خود را به گزینه ذیل ارسال نمایید.',
                style:Styles.textDefault,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
              child: new InkWell(
                child: new Text('Support@developmentmonitors.com',style: TextStyle(color: Colors.blueAccent,fontSize: 18),),
                  onTap: () => _launchURL(),
              )
            ),
          ],
        ),
      ),
    );
  }
}
