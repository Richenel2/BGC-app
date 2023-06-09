import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  const AppButton({
    super.key,
    required this.text,
    this.textColor,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 30,
            height: 20,
            child: CustomPaint(
              painter: OpenPainter(color: textColor ?? Colors.black),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  final Color color;
  OpenPainter({required this.color});
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    //draw arc
    canvas.drawArc(
        const Offset(0, 0) & const Size(20, 20),
        3.14, //radians
        3.14 / 2, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class CustomBackButton extends StatelessWidget {
  final Color? color;
  const CustomBackButton({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints(minWidth: 50),
      onPressed: Get.back,
      icon: Row(
        children: [
          Icon(
            Icons.arrow_back,
            color: color,
          ),
          Text(
            "-",
            style: TextStyle(color: color, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}
