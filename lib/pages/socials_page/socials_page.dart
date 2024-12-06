import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:website/widgets/socials_buttons.dart';

class SocialsPage extends StatelessWidget {
  const SocialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final double screenwidth = MediaQuery.of(context).size.width;
    // final double screenheight = MediaQuery.of(context).size.height;
    // bool isMobile = screenwidth < 600;
    List<SocialsButtons> socialsList = [
      SocialsButtons(buttonText: 'Github'),
      SocialsButtons(buttonText: 'LinkedIn'),
      SocialsButtons(buttonText: 'Discord'),
      SocialsButtons(buttonText: 'Steam'),
      SocialsButtons(buttonText: 'Email'),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Socials',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              context.go('/index');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: socialsList.map((social){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  social,
                  const SizedBox(height: 10),
                ],
              ),
            );
          }).toList()
        ),
      ),
    );
  }
}
