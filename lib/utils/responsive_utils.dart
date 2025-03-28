import 'package:flutter/material.dart';

double getResponsiveWidth(BuildContext context, double percentSize) {
  double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth > 600) { 
    percentSize = percentSize * 1.2; 
  }
  return screenWidth * percentSize;
}

double getResponsiveHeight(BuildContext context, double percentSize) {
  double screenHeight = MediaQuery.of(context).size.height;

  if (screenHeight > 800) { 
    percentSize = percentSize * 1.1; 
  }
  return screenHeight * percentSize;
}