import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/onboarding.dart';
import 'package:groomz/screens/HomeScreen/homescreen.dart';
import 'package:groomz/utils/size_config.dart';

class Onboarding extends StatefulWidget {
  final PageController pageController = PageController();
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentindex = 0;
  String label = "Next";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSecondaryColor1,
        body: Column(
          children: [
            Container(
              height: 500,
              child: PageView.builder(
                  controller: widget.pageController,
                  itemCount: onboarddata.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentindex = value;
                      onboarddata.length - 1 == currentindex
                          ? label = "Get Started"
                          : label;
                    });
                  },
                  itemBuilder: (context, i) {
                    return Page(
                      onBoard: onboarddata[i],
                    );
                  }),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(onboarddata.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    margin: EdgeInsets.only(right: 5),
                    height: 5,
                    width: currentindex == index ? 40 : 10,
                    decoration: BoxDecoration(
                        color:
                            currentindex == index ? TextIconcolor : kTextColor),
                  );
                }),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        currentindex++;
                        widget.pageController.jumpToPage(currentindex);
                        currentindex == onboarddata.length
                            ? HomeScreen()
                            : null;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: TextIconcolor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        label,
                        style: TextStyle(color: kSecondaryColor1),
                      ),
                    )))
          ],
        ));
  }
}

class Page extends StatelessWidget {
  final OnBoard onBoard;

  const Page({Key key, this.onBoard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          onBoard.image,
          fit: BoxFit.fill,
          height: 350,
          width: double.infinity,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          onBoard.name,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: TextIconcolor, fontSize: 26)),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          onBoard.desc,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: Colors.white, fontSize: 18)),
        )
      ],
    );
  }
}
