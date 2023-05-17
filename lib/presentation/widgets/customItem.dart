import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/config/appColor.dart';

class FilterListItem extends StatelessWidget {
  final String label;
  final VoidCallback onClick;
  final List<String> list;
  final String url;

  FilterListItem(
      {@required this.label,
     @ required this.onClick,
      @required this.list,
      this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                label,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColor.primaryBlue,
                    fontFamily: 'Tajawal'),
              ),
              const Spacer(),
              InkWell(
                onTap: onClick,
                child: const Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Tajawal'),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: Center(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, pos) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColor.primaryBlue,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                            child: Row(
                          children: [
                            if (url != null)
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: NetworkImage(url)))),
                              ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(list[pos],
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontFamily: 'Tajawal')),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )),
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
