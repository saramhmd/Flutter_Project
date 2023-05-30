import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'AthkarMorning.dart';
import 'AthkarNight.dart';
import 'Thiker.dart';
import 'addThiker.dart';
import 'AthkarAfterPrayer.dart';
import 'ViewYourThiker.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'تطبيق أذكار',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xffFFB71B),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AthkarMorning()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sunny,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'أذكار الصباح',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AthkarNight()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.nightlight,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'أذكار المساء',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 20), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AthkarAfterPrayer()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.timer,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'أذكار بعد الصلاة',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Thiker()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fingerprint,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'التسبيح',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddTheker()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'اضافة ذكر',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
          
            SizedBox(height: 20), // add some space between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ViewYourThiker()),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.white,
                padding: EdgeInsets.all(15),
                elevation: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.list,
                    color: Color(0x66FFB71B),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'عرض أذكارك',
                    style: TextStyle(
                      color: Color(0xffFFB71B),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
