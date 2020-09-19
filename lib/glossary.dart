import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'styles.dart';

class Glossary extends StatefulWidget {
  @override
  _GlossaryState createState() => _GlossaryState();
}

class _GlossaryState extends State<Glossary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('فرهنگ اصطلاحات', style: Styles.navBarTitle)),backgroundColor: Styles.header1Color),
      body:ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Center(child: Text('اندازه گیری آ ب و هوا', style: Styles.header2)),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/currTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('درجه حرارت فعلی', style: Styles.textDefault),
              subtitle: Text('مشاهده آخزین درجه حرارت به روز رسانی شده', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/humidity.svg',color: Colors.black,height: 35,width: 35),
              title: Text('رطوبت', style: Styles.textDefault),
              subtitle: Text('فیصدی تراکم بخارات آب موجود در هوا', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/maxTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('بلندترین درجه حرارت', style: Styles.textDefault),
              subtitle: Text('بالاترین درجه حرارت ضبط شده در طی 24 ساعت گذشته', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/minTemp.svg',color: Colors.black,height: 40,width: 40),
              title: Text('پاینترین درجه حرارت', style: Styles.textDefault),
              subtitle: Text('پایین ترین درجه حرارت ضبط شده در طی 24 ساعت گذشته', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/precipitation.svg',color: Colors.black,height: 30,width: 30),
              title: Text('بارندگی', style: Styles.textDefault),
              subtitle: Text('میزان مجموعی باران در طی 24 ساعت گذشته', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/sunrise.svg',color: Colors.black,height: 40,width: 40),
              title: Text('طلوع  آفتاب', style: Styles.textDefault),
              subtitle: Text('صبح، زمانی که آفتاب ظاهر می شود و یا روشنی روز کامل می شود', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/sunset.svg',color: Colors.black,height: 40,width: 40),
              title: Text('غروب آفتاب', style: Styles.textDefault),
              subtitle: Text('شام، زمانی که آفتاب غایب می شود و یا روشنی روز ناپدید می شود', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.access_time, size: 36, color: Colors.black),
              title: Text('زمان خواندن', style: Styles.textDefault),
              subtitle: Text('زمانی است که آخرین سنجش صورت گرفته', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/compass.svg',color: Colors.black,height: 30,width: 30),
              title: Text('جهت باد', style: Styles.textDefault),
              subtitle: Text('جهت که باد نظر به قطب نما می وزد', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset('assets/icons/wind.svg',color: Colors.black,height: 30,width: 30),
              title: Text('سرعت متوسط باد', style: Styles.textDefault),
              subtitle: Text('سرعت هوا در زمان اندازه گیری', style: TextStyle(fontSize: 16, fontFamily: 'SourceSansPro-Regular')),
            ),
          ),
          Card(
            child: ListTile(
              title: Center(child: Text('وضعیت آب و هوا', style: Styles.header2)),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/ابرهای قطعه قطعه.png'),
              title: Text('ابرهای قطعه قطعه', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/آسمان صاف.png'),
              title: Text('آسمان صاف', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/نم نم باران.png'),
              title: Text('نم نم باران', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/غبار.png'),
              title: Text('غبار', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/باران.png'),
              title: Text('باران', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/ابرهای پراکنده.png'),
              title: Text('ابرهای پراکنده', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/برف.png'),
              title: Text('برف', style: Styles.textDefault),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.asset('assets/images/طوفان همراه با رعد و برق.png'),
              title: Text('طوفان همراه با رعد و برق', style: Styles.textDefault),
            ),
          ),
        ],
      )
    );
  }
}
