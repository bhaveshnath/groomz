import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/screens/HomeScreen/components/homebody.dart';
import 'package:groomz/screens/Nearby/nearby.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  List<Widget> screens = [Homebody(), Nearby()];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: screens[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: TextIconcolor,
          backgroundColor: kPrimaryColor,
          currentIndex: selectedindex,
          unselectedItemColor: Colors.white60,
          elevation: 0,
          onTap: (value) {
            setState(() {
              selectedindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), title: Text("Near by")),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), title: Text("Booking")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("Profile"))
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: TextIconcolor,
        child: SvgPicture.asset(
          "assets/icons/trending.svg",
          width: 30,
          color: kSecondaryColor1,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
