import 'package:flutter/material.dart';
import 'package:flutter_web/theme.dart';

class Website extends StatefulWidget {
  const Website({Key? key}) : super(key: key);

  @override
  State<Website> createState() => _WebsiteState();
}

class _WebsiteState extends State<Website> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navigation({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: selectedIndex == index ? klik1 : klik2,
                ),
                Container(
                  width: 66,
                  height: 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == index ? lightRed : Colors.transparent,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Image.asset(
                "background.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    // NOTE: NAVIGATION

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "logo.png",
                          width: 70,
                          height: 40,
                        ),
                        Row(
                          children: [
                            navigation(
                              title: "Guides",
                              index: 0,
                            ),
                            navigation(
                              title: "Pricing",
                              index: 1,
                            ),
                            navigation(
                              title: "Team",
                              index: 2,
                            ),
                            navigation(
                              title: "Stories",
                              index: 3,
                            ),
                          ],
                        ),
                        Image.asset(
                          "button.png",
                          width: 163,
                          height: 53,
                        ),
                      ],
                    ),
                    // NOTE: CONTENT
                    const SizedBox(
                      height: 76,
                    ),
                    Image.asset(
                      "illustration.png",
                      width: 550,
                      // width: 763,
                      // height: 550,
                    ),

                    // NOTE: FOOTER
                    const SizedBox(
                      height: 84,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "icon_scroll.png",
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Text(
                          "Scroll to Learn More",
                          style: bottom,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
