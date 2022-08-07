import 'package:aplikasi_haji/homepage.dart';
import 'package:aplikasi_haji/tutorial/intro_1.dart';
import 'package:aplikasi_haji/tutorial/intro_2.dart';
import 'package:aplikasi_haji/tutorial/intro_3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'splashscreen.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  State<Tutorial> createState() => _TutorialState();
}

class _TutorialState extends State<Tutorial> {
  PageController kontrolhalaman = PageController();

  bool halamanTerakhir = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: kontrolhalaman,
          onPageChanged: (index) {
            setState(() {
              halamanTerakhir = (index == 2);
            });
          },
          children: [
            Intro1(),
            intro_2(),
            intro_3(),
          ],
        ),

        //titik sambung
        Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //SKIP
                GestureDetector(
                    onTap: () {
                      kontrolhalaman.jumpToPage(2);
                    },
                    child: Text('Lewati')),
                SmoothPageIndicator(
                  controller: kontrolhalaman,
                  count: 3,
                  effect: WormEffect(
                      spacing: 8.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Colors.white,
                      activeDotColor: Colors.black45),
                ),
                //NEXT
                halamanTerakhir
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomePage();
                          }));
                        },
                        child: Text('Selesai'))
                    : GestureDetector(
                        onTap: () {
                          kontrolhalaman.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('Lanjut')),
              ],
            )),
      ]),
    );
  }
}
