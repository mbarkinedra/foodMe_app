import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../config/appColor.dart';
import '../../widgets/customItem.dart';

class FilterByChanged extends StatelessWidget {
  FilterByChanged({Key key}) : super(key: key);
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title:  Row(
        children: [
          Center(
            child: Text(
              'Filtre By',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColor.primaryBlue,
                  fontFamily: 'Tajawal'),

            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Text(
              'Reset',
              textAlign: TextAlign.left,

              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColor.primaryBlue,
                  fontFamily: 'Tajawal'),
            ),
          ),
        ],
      ),
          iconTheme: IconThemeData(color: AppColor.primaryBlue),

          backgroundColor: Colors.white),

      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),

            FilterListItem(
              onClick: () {},
              label: "Cuisine",
              list: [
                "Italian",
                "Italian",
                "Italian",
                "Italian",
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            FilterListItem(
              onClick: () {},
              label: "Food type",
              list: [
                "Chicken",
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            FilterListItem(
              onClick: () {},
              label: "Aggregators",
              list: [
                "Restaurant",
                "Doordash",
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            FilterListItem(
              url:
                  "https://aqarfeed.com/wp-content/uploads/2021/11/%D9%85%D8%B7%D8%A7%D8%B9%D9%85-%D8%A7%D9%84%D9%85%D9%82%D8%B7%D9%85.jpg",
              onClick: () {},
              label: "Brands",
              list: [
                "Restaurant",
                "Doordash",
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              title: Text(
                'Price',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColor.primaryBlue,
                    fontFamily: 'Tajawal'),
              ),
              children: <Widget>[
                RangeSlider(
                  inactiveColor: AppColor.primaryBlue,
                  activeColor: AppColor.primaryBlue,
                  values: _currentRangeValues,
                  max: 100,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    _currentRangeValues = values;
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              title: Text(
                'Rating',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColor.primaryBlue,
                    fontFamily: 'Tajawal'),
              ),
              children: <Widget>[
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemSize: 30,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }
}
