import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_me/presentation/widgets/customImage.dart';
import 'package:food_me/presentation/widgets/customText.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final String image;
  final String deliveryImage;
  final double? size;
  final Widget titleText;
  final Widget kmText;
  final Widget? title3Text;
  final Widget? title2Text;
  final Widget star;
  final Widget coeur;
  final Widget btn1,
      btn2,
      btn3,
      deliveryTitle,
      deliveryEvaluation,
      textTemps,
      textSar,
      textTemps2,
      tempsImage,
      btnCard,
      viewAllText;

  const CustomCard({
    Key? key,
    required this.image,
    required this.star,
    required this.cardColor,
    required this.titleText,
    required this.kmText,
    this.title3Text,
    this.title2Text,
    required this.coeur,
    required this.btn1,
    required this.btn2,
    required this.btn3,
    this.size,
    required this.deliveryImage,
    required this.deliveryTitle,
    required this.deliveryEvaluation,
    required this.textTemps,
    required this.textSar,
    required this.textTemps2,
    required this.tempsImage,
    required this.btnCard,
    required this.viewAllText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Card(
      color: cardColor,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(image),
                Column(
                  children: [
                    titleText,
                    Row(
                      children: [
                        star,
                        SizedBox(
                          width: 10,
                        ),
                        kmText
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 110,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * .01),
                  child: coeur,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
             children: [
               SizedBox(
                 width:  MediaQuery.of(context).size.width * .1,
               height: MediaQuery.of(context).size.height * .03,
               child: btn1,),
               SizedBox(
                 width: 10,
               ),
      SizedBox(
        width:  MediaQuery.of(context).size.width * .1,
        height: MediaQuery.of(context).size.height * .03,
        child: btn2,),
               SizedBox(
                 width: 10,
               ),
               SizedBox(
                 width:  MediaQuery.of(context).size.width * .1,
                 height: MediaQuery.of(context).size.height * .03,
                 child: btn3)
             ],
           ),
            SizedBox(
              height: 20,
            ),
      Padding(padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height* .01,
      ),
        child:    Row(

              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(deliveryImage,color: Colors.black,),
                        SizedBox(
                          width: 10,
                        ),
                        deliveryTitle,
                        SizedBox(
                          width: 40,
                        ),
                        deliveryEvaluation,
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                      children: [
                        textTemps,
                        SizedBox(
                          width: 10,
                        ),
                        textSar,
                        SizedBox(
                          width: 20,
                        ),
                        textTemps2,
                        SizedBox(
                          width: 20,
                        ),
                        tempsImage
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                  ],
                ),
                SizedBox(
                  width: 30,
                ),
               Column(
                children: [
                  btnCard,
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: viewAllText ,
                  )

                ],
              ),

              ],
            ))

          ],
        ),
      ),
    );
  }
}
