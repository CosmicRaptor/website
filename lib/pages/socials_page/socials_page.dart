import 'package:flutter/material.dart';
import 'package:website/widgets/page_switch_buttons.dart';
import 'package:website/widgets/socials_buttons.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    bool isMobile = screenwidth < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: isMobile
          ? Drawer(
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: const [
                      PageWidget(buttonText: "Home"),
                      PageWidget(buttonText: "Projects"),
                      PageWidget(buttonText: "Socials"),
                      PageWidget(buttonText: "Photos"),
                    ],
                  ),
                ),
              ),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: isMobile
            ? Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (!isMobile)
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheight * 0.01,
                    ),
                    const PageWidget(buttonText: "Home"),
                    const PageWidget(buttonText: "Projects"),
                    const PageWidget(buttonText: "Socials"),
                    const PageWidget(buttonText: "Photos"),
                  ],
                ),
              ),
            Flexible(
              flex: 10,
              child: Align(
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Connect with Me",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontFamily: 'Jetbrains-Mono'),
                          ),
                          SizedBox(
                            height: screenheight * 0.05,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SocialsButtons(buttonText: "Discord"),
                              SizedBox(
                                height: screenheight * 0.05,
                              ),
                              const SocialsButtons(buttonText: "Steam"),
                              SizedBox(
                                height: screenheight * 0.05,
                              ),
                              const SocialsButtons(buttonText: "GitHub"),
                            ],
                          ),
                          SizedBox(
                            height: screenheight * 0.05,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Made with ♥️ using Flutter",
                                style: TextStyle(
                                  fontFamily: "Jetbrains-Mono",
                                  color: Colors.white38,
                                  fontSize: 15,
                                ),
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
          ],
        ),
      ),
    );
  }
}
