import 'package:flutter/material.dart';
import '../../config/appColor.dart';

class CustomSortBy extends StatefulWidget {
  @override
  _CustomSortByState createState() => _CustomSortByState();
}

class _CustomSortByState extends State<CustomSortBy> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "SORT BY",
                style: TextStyle(
                  color: AppColor.primaryYellow,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Tajawal',
                ),
              ),
              ListTile(
                title: Text(
                  'Recommended',
                  style: TextStyle(
                    color: AppColor.primaryBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tajawal',
                  ),
                ),
                trailing: Radio(
                  value: 1,
                  groupValue: selectedOption,
                  activeColor: AppColor.primaryBlue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Lowest fees',
                  style: TextStyle(
                    color: AppColor.primaryBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tajawal',
                  ),
                ),
                trailing: Radio(
                  value: 2,
                  groupValue: selectedOption,
                  activeColor: AppColor.primaryBlue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Quickest delivery',
                  style: TextStyle(
                    color: AppColor.primaryBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tajawal',
                  ),
                ),
                trailing: Radio(
                  value: 3,
                  groupValue: selectedOption,
                  activeColor: AppColor.primaryBlue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Shortest distance',
                  style: TextStyle(
                    color: AppColor.primaryBlue,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Tajawal',
                  ),
                ),
                trailing: Radio(
                  value: 4,
                  groupValue: selectedOption,
                  activeColor: AppColor.primaryBlue,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
