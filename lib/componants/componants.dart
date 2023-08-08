import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

Widget pianoItem({
  required Color itemColor,
   required String soundPath,
})
{
  return Expanded(
    child: GestureDetector(
      onTap: (){
        final player = AudioPlayer();
         player.play(AssetSource(soundPath));
      },
      child: Container(
        decoration:  BoxDecoration(
          color: itemColor,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(80),
              bottomRight: Radius.circular(80)
          ),
        ),
      ),
    ),
  );
}