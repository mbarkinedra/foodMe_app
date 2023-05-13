import 'package:flutter/material.dart';

import '../../config/appColor.dart';


class MyHomeItem extends StatelessWidget {
  late final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 60.0, right: 70.0),
      child: Container(
        child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => Container(
            height: 212,
            width: 396,
            decoration: BoxDecoration(
                color: AppColor.greyCard,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)),

            //   width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: [
                      Container(
                          child: Image.asset("assets/images/pasta.png")),
                    ],
                  ),
                  SizedBox(width: 7.0),
                  Column(
                    children: [
                      Text("bbbbbbbbbbbbb",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                      Text("bnnnnnnnnnnn")
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.favorite_border)
                ]),
          ),
        ),
      ),
    );
  }
}
