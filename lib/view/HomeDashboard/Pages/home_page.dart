import 'package:flutter/material.dart';
import 'package:treak_clan/utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // CachedNetworkImage(
            //   imageUrl: _movies[_current]['image'],
            //   placeholder: (context, url) =>
            //   ),
            //   errorWidget: (context, url, error) => const Icon(Icons.error),
            // ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  color: background,
                )),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      gradient: DecorationHelper.shared.setBannerGradient()),
                )),

            Positioned(
                bottom: 30,
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Container(
                    alignment: Alignment.center,
                    child: const Text("Upcoming Events")))
          ],
        ),
      ),
    );
  }
}
