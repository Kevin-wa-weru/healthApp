import 'dart:math';
import 'package:flutter/material.dart';
import 'package:healthapp/constants.dart';

class WatchConnection extends StatefulWidget {
  const WatchConnection({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _WatchConnectionState createState() => _WatchConnectionState();
}

class _WatchConnectionState extends State<WatchConnection>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation<double>? _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          _animationController!.forward();
        } else if (status == AnimationStatus.completed) {
          _animationController!.repeat();
        }
      });

    _animationController!.forward();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: primaryColor,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Connect Watch',
                    style: TextStyle(
                        color: primaryColor,
                        fontFamily: 'AvenirNext',
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const SizedBox(
            height: 200,
          ),
          Center(
            child: CustomPaint(
              painter: MyCustomPainter(_animation!.value),
              child: Container(),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          const Text(
            'Scanning...',
            style: TextStyle(
                color: primaryColor,
                fontFamily: 'AvenirNext',
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Searching for devices',
            style: TextStyle(
                color: secondaryColor,
                fontFamily: 'AvenirNext',
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  final double animationValue;

  MyCustomPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    for (int value = 3; value >= 0; value--) {
      circle(canvas, Rect.fromLTRB(0, 0, size.width, size.height),
          value + animationValue);
    }
  }

  void circle(Canvas canvas, Rect rect, double value) {
    Paint paint = Paint()
      ..color =
          const Color(0xff808080).withOpacity((1 - (value / 4)).clamp(.0, 1));

    canvas.drawCircle(rect.center,
        sqrt((rect.width * .5 * rect.width * .5) * value / 4), paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return true;
  }
}
