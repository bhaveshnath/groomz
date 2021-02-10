import 'package:flutter/material.dart';
import 'package:groomz/constants.dart';
import 'package:groomz/models/reviews.dart';
import 'package:groomz/widgets/bookbutton.dart';
import 'package:groomz/widgets/circularavatar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Write your Review ",
              style: TextStyle(color: kTextColor, fontSize: 16),
            ),
            SmoothStarRating(
              isReadOnly: false,
              size: 25,
              color: TextIconcolor,
              borderColor: TextIconcolor,
              rating: 3,
              onRated: (rating) {},
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            BarberCircularavatar(
              image:
                  "https://i.pinimg.com/originals/e1/cf/8b/e1cf8ba2b42e973b6aa3d85153cff72a.jpg",
              radius: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Leave your experience....",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(kpadding),
                      suffixIcon: Icon(Icons.keyboard_voice)),
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(),
            ),
            BookButton(
              name: "Post",
            )
          ],
        ),
        Text(
          "All Reviews (150)",
          style: TextStyle(
            color: TextIconcolor,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        ListView.builder(
            itemCount: reviews.length,
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemBuilder: (context, i) {
              return Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        BarberCircularavatar(
                          image: reviews[i].image,
                          radius: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              reviews[i].name,
                              style: TextStyle(color: Colors.white),
                            ),
                            SmoothStarRating(
                              rating: reviews[i].rating,
                              isReadOnly: true,
                              color: TextIconcolor,
                              borderColor: TextIconcolor,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      reviews[i].review,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white60,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              );
            })
      ],
    );
  }
}
