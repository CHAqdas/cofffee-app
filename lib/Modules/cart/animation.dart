import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        controller.reset();
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              "https://assets1.lottiefiles.com/packages/lf20_g0gttpkl.json",
            ),
            InkWell(
              onTap: showdialoge,
              child: Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  "Confirm Order",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  showdialoge() {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
              backgroundColor: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.network(
                      "https://assets3.lottiefiles.com/packages/lf20_yom6uvgj.json",
                      height: 155,
                      repeat: false,
                      controller: controller, onLoaded: ((p0) {
                    controller.forward();
                  })),
                  Text(
                    "Confirmed",
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  )
                ],
              ),
            ));
  }
}
