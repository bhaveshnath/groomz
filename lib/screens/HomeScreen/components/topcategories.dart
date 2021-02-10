import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groomz/models/category.dart';
import 'package:groomz/models/salon.dart';

import '../../../constants.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      child: Padding(
        padding: const EdgeInsets.only(left: kpadding),
        child: ListView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: categories[i].color,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        categories[i].image,
                        height: 30,
                        width: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    categories[i].name,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              );
            }),
      ),
    );
  }
}
