import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var isVisible = false;
  late AnimationController logoAnimation;
  late Animation<double> opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    logoAnimation = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(logoAnimation)
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            Navigator.pushNamed(context, "home-page");
          });
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    print(isVisible);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: AnimatedBuilder(
                  animation: logoAnimation,
                  builder: (context, child) {
                    return AnimatedOpacity(
                        opacity: !isVisible ? 1 : 0,
                        duration: const Duration(milliseconds: 700),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TypewriterAnimatedText(
                              'United By Mountains',
                              textStyle: const TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                              speed: const Duration(milliseconds: 70),
                            ),
                          ],
                          isRepeatingAnimation: false,
                          totalRepeatCount: 1,
                          repeatForever: false,
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                          onFinished: () {
                            isVisible = true;
                            logoAnimation.forward();
                          },
                        ));
                  }),
            ),
            Center(
              child: AnimatedBuilder(
                  animation: logoAnimation,
                  builder: ((context, child) {
                    return AnimatedOpacity(
                      opacity: isVisible ? logoAnimation.value : 0,
                      duration: const Duration(milliseconds: 700),
                      child: Container(
                        child: Image.asset(
                          "assets/icon.png",
                          width: 200,
                          height: 200,
                        ),
                      ),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
