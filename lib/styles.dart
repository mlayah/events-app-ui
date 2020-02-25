import 'package:flutter/material.dart';

const mainTitleStyle = TextStyle(
  fontWeight: FontWeight.w700,
  color: Colors.white,
  fontSize: 32,
);

const mainSubtitleStyle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w300,
  color: Colors.white,
);

const searchBarColor = Color(0XFF21243C);

var searchBarDecoration = BoxDecoration(
    color: searchBarColor,
    borderRadius: BorderRadius.circular(40),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 10),
        blurRadius: 15,
        color: Colors.black54,
      )
    ]);

var distanceBoxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    ),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 5),
        blurRadius: 5,
        spreadRadius: 5,
        color: searchBarColor.withOpacity(.2),
      )
    ]);
