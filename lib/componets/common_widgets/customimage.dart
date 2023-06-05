import 'package:flutter/cupertino.dart';

class CustomImageDecoration extends StatelessWidget {
  const CustomImageDecoration({Key? key,required this.image,this.width,
    this.height


  }) :





        super(key: key);
  final String image;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return  Image(image: AssetImage(image),height: height,width: width,);
  }
}
