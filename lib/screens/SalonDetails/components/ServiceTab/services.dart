import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/screens/SalonDetails/components/ServiceTab/components/packages.dart';

import 'package:groomz/screens/SalonDetails/components/ServiceTab/components/service.dart';

class SalonServices extends StatefulWidget {
  List<String> options = ["Services", "Packages & Offers", "Price Table"];
  List<Widget> servicetabpages = [Services(), PackagesOffer()];
  @override
  _SalonServicesState createState() => _SalonServicesState();
}

class _SalonServicesState extends State<SalonServices> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.options.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedindex = index;
                  });
                },
                child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: selectedindex == index
                            ? TextIconcolor
                            : kSecondaryColor1,
                        border: Border.all(color: TextIconcolor)),
                    child: Text(widget.options[index],
                        style: TextStyle(
                            color: selectedindex == index
                                ? kSecondaryColor1
                                : TextIconcolor,
                            fontSize: 18))),
              );
            })),
        SizedBox(
          height: 25,
        ),
        widget.servicetabpages[selectedindex]
      ],
    );
  }
}
