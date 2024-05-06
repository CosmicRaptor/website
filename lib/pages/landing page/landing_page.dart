import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:website/main.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  bool isHovering1 = false;
  bool isHovering2 = false;
  bool isHovering3 = false;
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
                    InkWell(
                      onTap: () => null,
                      onHover: (hovering){
                        setState(() {
                          isHovering1 = hovering;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                        padding: EdgeInsets.all(isHovering1 ? 15 : 10),
                        decoration: BoxDecoration(
                          color: isHovering1 ? Colors.white24 : Colors.black,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextButton(onPressed: (){}, style: TextButton.styleFrom(textStyle: TextStyle(color: Colors.white)), child: const Text("Projects", style: TextStyle(
                          fontFamily: 'Jetbrains-Mono',
                          fontSize: 20,
                          color: Colors.white,
                        ),),),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      onHover: (hovering){
                        setState(() {
                          isHovering2 = hovering;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                        padding: EdgeInsets.all(isHovering2 ? 15 : 10),
                        decoration: BoxDecoration(
                            color: isHovering2 ? Colors.white24 : Colors.black,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextButton(onPressed: (){}, style: TextButton.styleFrom(textStyle: TextStyle(color: Colors.white)), child: const Text("Social", style: TextStyle(
                          fontFamily: 'Jetbrains-Mono',
                          fontSize: 20,
                          color: Colors.white,
                        ),),),
                      ),
                    ),
                    InkWell(
                      onTap: () => null,
                      onHover: (hovering){
                        setState(() {
                          isHovering3 = hovering;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease,
                        padding: EdgeInsets.all(isHovering3 ? 15 : 10),
                        decoration: BoxDecoration(
                            color: isHovering3 ? Colors.white24 : Colors.black,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextButton(onPressed: (){}, style: TextButton.styleFrom(textStyle: TextStyle(color: Colors.white)), child: const Text("Photos", style: TextStyle(
                          fontFamily: 'Jetbrains-Mono',
                          fontSize: 20,
                          color: Colors.white,
                        ),),),
                      ),
                    ),

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
            ],
        ),
      ),
    );
  }
}
