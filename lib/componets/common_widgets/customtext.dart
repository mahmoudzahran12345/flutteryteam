import 'package:flutter/cupertino.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,
    required this.text,
    required this.color,
    this.size,
    this.textAlign

  })


      : super(key: key);
final String text;
final Color color;
final TextAlign? textAlign;
final  double?size;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
          text,
          style: TextStyle(color: color,fontSize: size,

          ),
          textAlign:textAlign ,
        ));
  }
}
