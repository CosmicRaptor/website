import 'package:flutter/material.dart';
import 'package:website/main.dart';
import 'package:website/widgets/page_switch_buttons.dart';
import 'package:website/widgets/socials_buttons.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 2,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenheight! * 0.01,),
                  const PageWidget(buttonText: "Home"),
                  const PageWidget(buttonText: "Projects"),
                  const PageWidget(buttonText: "Socials"),
                  const PageWidget(buttonText: "Photos"),
                ],
              ),
            ),
          ),
          Flexible(
              flex: 8,
              child: Stack(
                children: [
                  Positioned(
                    left: -400,
                    right: 0,
                    top: screenheight! / 2 - 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          const SocialsButtons(buttonText: "Discord"),
                          SizedBox(height: screenheight! * 0.05,),
                          const SocialsButtons(buttonText: "Steam"),
                          SizedBox(height: screenheight! * 0.05,),
                          const SocialsButtons(buttonText: "GitHub"),
                        ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: -50,
                      right: 0,
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(width: screenwidth! * 0.2, child: const Text("Made with ♥️ using Flutter", style: TextStyle(
                            fontFamily: "Jetbrains-Mono",
                            color: Colors.white38,
                            fontSize: 15,
                          ),),)
                      )
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
