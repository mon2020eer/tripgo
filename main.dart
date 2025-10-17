
import 'package:flutter/material.dart';

void main() {
  runApp(TripGoApp());
}

class TripGoApp extends StatefulWidget {
  @override
  _TripGoAppState createState() => _TripGoAppState();
}

class _TripGoAppState extends State<TripGoApp> {
  bool isArabic = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TripGo',
      theme: ThemeData(
        primaryColor: Colors.green,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.yellow,
          primary: Colors.green,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(isArabic ? 'تريب جو' : 'TripGo'),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              icon: Icon(Icons.language),
              onPressed: () {
                setState(() {
                  isArabic = !isArabic;
                });
              },
            )
          ],
        ),
        body: HomePage(isArabic: isArabic),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.yellow,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.flight), label: isArabic ? 'رحلات' : 'Flights'),
            BottomNavigationBarItem(icon: Icon(Icons.hotel), label: isArabic ? 'فنادق' : 'Hotels'),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: isArabic ? 'عروض' : 'Offers'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: isArabic ? 'حسابي' : 'Account'),
            BottomNavigationBarItem(icon: Icon(Icons.payment), label: isArabic ? 'الدفع' : 'Payment'),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final bool isArabic;
  const HomePage({required this.isArabic});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Text(
          isArabic ? 'مرحباً بك في TripGo!' : 'Welcome to TripGo!',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.flight_takeoff, color: Colors.green),
            title: Text(isArabic ? 'استكشف الرحلات الجوية' : 'Explore Flights'),
          ),
        ),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.hotel, color: Colors.green),
            title: Text(isArabic ? 'اكتشف الفنادق المميزة' : 'Discover Top Hotels'),
          ),
        ),
        Card(
          elevation: 4,
          child: ListTile(
            leading: Icon(Icons.local_offer, color: Colors.green),
            title: Text(isArabic ? 'أفضل العروض السياحية' : 'Best Travel Offers'),
          ),
        ),
      ],
    );
  }
}
