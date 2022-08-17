import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/utils/extention.dart';
import 'package:restaurant_management/utils/styles/styles.dart';

class IntroLeft extends StatefulWidget {
  const IntroLeft({
    Key? key,
  }) : super(key: key);

  @override
  State<IntroLeft> createState() => _IntroLeftState();
}

class _IntroLeftState extends State<IntroLeft> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 7000),
    // upperBound: 0.5,
  )..repeat(reverse: false);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: context.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              "Pizza East Portobello",
              style: GoogleFonts.rubik(
                fontSize: 26.sp,
                fontWeight: FontWeight.w600,
                height: 4.8,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  top: 0,
                  child: Stack(
                    children: [
                      Image.asset(KAssetName.foodimagebg.imagePath),
                      Positioned(
                        left: 100,
                        top: 130,
                        child: RotationTransition(
                          turns:
                              Tween(begin: 0.0, end: 1.0).animate(_controller),
                          child: Image.asset(
                            KAssetName.foodimage.imagePath,
                            width: 420,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
