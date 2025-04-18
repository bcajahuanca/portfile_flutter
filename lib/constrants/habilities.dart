import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/constrants/colors.dart';

List<String> workedAs = [
  "Software Developer",
  "Android Developer",
  "Software Engineer Student",
];

List<IconData> iconDataList = [
  FontAwesomeIcons.github,
  FontAwesomeIcons.linkedin,
  FontAwesomeIcons.instagram,
  FontAwesomeIcons.stackOverflow,
  FontAwesomeIcons.envelope,
];

List<FaIcon> socialNetWorks = iconDataList
    .map((icon) => FaIcon(
          icon,
          color: CustomColor.whiteSecondary,
        ))
    .toList();


List<String> socialNetWorksLinks = [
  "https://github.com/bcajahuanca",
  "https://www.linkedin.com/in/brad-cajahuanca/",
  "https://www.instagram.com/bcatsmp/",
  "https://stackoverflow.com/users/30311088/bcatsmp",
  "mailto:brad.cajahuancacruz@gmail.com"
];