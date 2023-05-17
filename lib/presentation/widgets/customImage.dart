import 'package:flutter/cupertino.dart';

class CustomImage extends StatelessWidget {
  final String image;
  final Color imageColor;

  const CustomImage({Key key, @required this.image, @required this.imageColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(AssetImage(image),color: imageColor,);
  }
}
