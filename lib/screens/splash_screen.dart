import 'package:campa1175/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          const Gap(10),
          title(),
          const Gap(10),
          myButton()
        ],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 20,
            position: ArcPosition.Bottom),
        elevation: 0,
        child: Container(
          height: Get.height / 1.4,
          width: Get.width,
          decoration: BoxDecoration(color: Color(0x7e441511)),
          child: Image.asset('assets/pngegg.png'),
        ));
  }

  Widget title() {
    return Text(
      "Bienvenido a \n F1-MERCH",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
    );
  }

  Widget myButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
        height: 52,
        padding: EdgeInsets.symmetric(horizontal: 32),
        decoration: BoxDecoration(
          color: Color(0xff441511),
          borderRadius: BorderRadius.circular(42),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Iniciemos",
                style: TextStyle(fontSize: 18, color: Colors.white)),
            Gap(10),
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.8),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
