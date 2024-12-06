import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/misc/open_url.dart';
import 'package:website/misc/page_state.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'About me',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          //icon button to close
          IconButton(
            onPressed: () {
              PageState.previousPage = 'about';
              context.go('/index');
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 200,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Hey there! I’m Aryan, just a curious soul exploring life and a bit of code',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  'I’m a (wannabe)software engineer, student, tech enthusiast, and a lifelong learner. I love to build things, and I’m passionate about creating software that makes a difference. I’m always looking for new opportunities to learn and grow, and I’m excited to see where my journey takes me.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Living in the lively city of Mumbai, I’ve always been drawn to creativity—whether it’s building a new app, trying new photoshoot angles, or trying to cook up a decent meal (spoiler: it’s a work in progress).',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'My hobbies have a wide range including: ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '• Photography',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '• Hiking',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '• Road trips',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '• And much more',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: TextSpan(
                    text:
                        "I’m always looking for new opportunities to learn and grow, and I’m excited to see where my journey takes me. If you’d like to connect, feel free to reach out to me on ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Jetbrains-Mono',
                    ),
                    children: [
                      TextSpan(
                        text: "social media",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.go('/socials');
                          },
                      ),
                      TextSpan(
                        text: " or via ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: "email",
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            openUrl(
                                "Email");
                          },
                      ),
                      TextSpan(
                        text: ".",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Thanks for stopping by!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
