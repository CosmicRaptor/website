import 'package:flutter/material.dart';
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
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    bool isMobile = screenwidth < 600;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: isMobile ? Drawer(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const PageWidget(buttonText: "Home"),
                const PageWidget(buttonText: "Projects"),
                const PageWidget(buttonText: "Socials"),
                const PageWidget(buttonText: "Photos"),
              ],
            ),
          ),
        ),
      ) : null,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: isMobile ? Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ) : null,
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
                    SizedBox(height: screenheight * 0.01,),
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
                            SizedBox(height: screenheight * 0.05,),
                            SizedBox(
                              //width: screenwidth * 0.8,
                              child: const Text("Demystifying the wonders of Linux!  I'm passionate about making Linux accessible and fun for everyone. I'm a Flutter developer and DevOps enthusiast who thrives in collaborative environments. Whether you're building the next big app or just tinkering with Linux, I'm always down to chat, code, troubleshoot issues, and maybe even swap some photography tips along the way.  Let's explore the world of tech and creativity together!",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Jetbrains-Mono',
                                  fontSize: 15,
                                ),),
                            ),
                            SizedBox(height: screenheight * 0.05,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Made with ♥️ using Flutter", style: TextStyle(
                                  fontFamily: "Jetbrains-Mono",
                                  color: Colors.white38,
                                  fontSize: 15,
                                ),),
                              ],
                            )
                          ],
                        ),
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

  Widget _buildDrawerItem(IconData icon, String title, bool isHovering, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      onHover: (hover) {
        setState(() {
          isHovering = hover;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        padding: EdgeInsets.all(isHovering ? 30 : 20),
        decoration: BoxDecoration(
          color: isHovering ? Colors.blue.withOpacity(0.1) : Colors.transparent,
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.blue),
          title: Text(title, style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
  }
}