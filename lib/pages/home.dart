import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/componants/constants.dart';
import 'package:tune_app/pages/tune_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Image.asset(kImage),
            const SizedBox(
              height: 15,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 35.0,
                fontFamily: 'Roboto Mono',
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('Tune '),
                  TyperAnimatedText('App '),
                  TyperAnimatedText('Piano'),
                ],
                onTap: () {
                  if (kDebugMode) {
                    print("Tap Event");
                  }
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>const TuneScreen()
                  ),
                  );
                },
                icon: const Icon(
                  Icons.piano,
                  size: 40,
                  color: Colors.white,
                )
            ),
          ],
        ),
      ),
    );
  }
}
