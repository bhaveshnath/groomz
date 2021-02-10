import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/services.dart';

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: services.length,
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          services[index].image,
                          width: 50,
                          height: 50,
                          fit: BoxFit.fill,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          services[index].name,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          services[index].types.length.toString() + " Types",
                          style: TextStyle(color: kTextColor),
                        )
                      ],
                    ),
                  ],
                ),
                Text(
                  "View",
                  style: TextStyle(
                    color: TextIconcolor,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          );
        });
  }
}
