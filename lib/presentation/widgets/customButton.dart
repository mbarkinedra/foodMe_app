import 'package:flutter/cupertino.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final IconData icon;
  final String image;
  final Color imageColor;
  final double width ;
  final double heightContainer;
  final Radius borderRduis;
  final Radius borderRaduis2;
  final Color backgroundColor;
  final double widthContainer;
   final double fontSize;
   final Color textColor;
   final Function function;
   final double padding;

  const CustomButton({Key key,  this.color, @required this.text, this.icon,@required this.image,
     this.width,  this.heightContainer,
    @required this.borderRduis, @required this.borderRaduis2,
    @required this.backgroundColor,  this.widthContainer, @required this.imageColor,
    @ required this.fontSize, @required this.textColor, @required this.function, @required this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
     SingleChildScrollView(
       child:
       GestureDetector(

         child: Container(

             padding: EdgeInsets.all(padding),
             child:
             Row(
               children: [

                 Text(
                   text,
                   style: TextStyle(
                     color: textColor,
                     fontSize: fontSize,
                   ),
                 ),
                 SizedBox(
                   width: 5,
                 ),
               ImageIcon(AssetImage(image),color:imageColor)
               ],

             ),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   bottomLeft: borderRduis,
                   bottomRight: borderRaduis2,
                   topRight: borderRaduis2,
                   topLeft: borderRduis,
                 ),
                 color: backgroundColor
             ),
           ),
         onTap: (){
           print("ffff");
           function();
         },
       ),
     );

  }
}
