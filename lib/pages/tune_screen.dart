import 'package:flutter/material.dart';
import 'package:tune_app/componants/constants.dart';

import '../componants/componants.dart';

class TuneScreen extends StatefulWidget {
  const TuneScreen({super.key});

  @override
  State<TuneScreen> createState() => _TuneScreenState();
}

class _TuneScreenState extends State<TuneScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kPrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
                'Piano',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto Mono'
              ),
            ),
            Image.asset(kImage,width: 120,height: 105,)
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children:
        [
          pianoItem(
            itemColor:kColor1,
            soundPath: 'sounds/note1.wav',
          ),
          pianoItem(
            itemColor:kColor2,
            soundPath: 'sounds/note2.wav',
          ),
          pianoItem(
            itemColor:kColor3,
            soundPath: 'sounds/note3.wav',
          ),
          pianoItem(
            itemColor:kColor4,
            soundPath: 'sounds/note4.wav',
          ),
          pianoItem(
            itemColor:kColor5,
            soundPath: 'sounds/note5.wav',
          ),
          pianoItem(
            itemColor:kColor6,
            soundPath: 'sounds/note6.wav',
          ),
          pianoItem(
            itemColor:kColor7,
            soundPath: 'sounds/note7.wav',
          ),
        ],
      ),
    );
  }
}
