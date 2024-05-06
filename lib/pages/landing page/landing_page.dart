import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website/main.dart';
import 'package:website/widgets/page_switch_buttons.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isHovering1 = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
  bool isHovering4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Flexible(
                flex: 2,
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
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: Flexible(
                  flex: 8,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Hey there! Welcome to my creative corner", style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontFamily: 'Jetbrains-Mono'
                          ),),
                          const Center(
                            child: Text("Just a silly site.", style: TextStyle(
                              color: Colors.white38,
                                fontFamily: 'Jetbrains-Mono',
                                fontSize: 25
                            )),
                          ),
                          SizedBox(height: screenheight! * 0.05,),
                          SizedBox(
                            width: screenwidth! * 0.5,
                            child: const Text("Demystifying the wonders of Linux!  I'm passionate about making Linux accessible and fun for everyone. I'm a Flutter developer and DevOps enthusiast who thrives in collaborative environments. Whether you're building the next big app or just tinkering with Linux, I'm always down to chat, code, troubleshoot issues, and maybe even swap some photography tips along the way.  Let's explore the world of tech and creativity together!",
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'Jetbrains-Mono',
                              fontSize: 15,
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ],
        ),
      ),
    );
  }
}
