
import 'package:flutter/material.dart';
import 'package:food_me/presentation/widgets/customBtn.dart';

import 'customButton.dart';
import 'customButton1.dart';

class BottomSheetFilter extends StatefulWidget {
  @override
  State<BottomSheetFilter> createState() => _BottomSheetFilterState();
}
class _BottomSheetFilterState extends State<BottomSheetFilter> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue = "DeviceType";
    List<String> options = ['Option 1', 'Option 2', 'Option 3'];
    Size _size = MediaQuery.of(context).size;
    return 
      Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Catégorie",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Column(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child:  DropdownButtonFormField<String>(
                            //  underline: const SizedBox(),
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8),
                              child: Text("city"),
                            ),
                            //  value: logic.city,
                            iconSize: 24,
                            elevation: 16,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: options.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child:  DropdownButtonFormField<String>(
                            //  underline: const SizedBox(),
                            isExpanded: true,
                            hint: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8),
                              child: Text("city"),
                            ),
                            //  value: logic.city,
                            iconSize: 24,
                            elevation: 16,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedValue = newValue!;
                              });
                            },
                            items: options.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                          ),
                        ),
                      ],
                    )
                ),

                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Prix",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Localisation",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),

                   Column(
                    children: [
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(15)),
                        child: DropdownButtonFormField<String>(
                        //  underline: const SizedBox(),
                          isExpanded: true,
                          hint: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Text("city"),
                          ),
                        //  value: logic.city,
                          iconSize: 24,
                          elevation: 16,
                     onChanged: (String? newValue) {
                       setState(() {
                         selectedValue = newValue!;
                       });
                     },
                          items: options.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        )
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.yellow, width: 2),
                              borderRadius: BorderRadius.circular(15)),
                          child: DropdownMenuItem<String>(
                               // value: value,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                                  child: Text('data')),
                                ),
                              )
                            ,

                    ],
                  )
                ,
                Align(
                  alignment: Alignment.center,
                  child: CustomBtn(backColor: Colors.yellow,
                    raduis: 20, function: (){},
                    text: Text('log'),),
                ),
              ],
            ),
          )),
      );
  }
}