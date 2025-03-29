import 'package:flutter/material.dart';
import 'package:mockup_tinder/theme/custom_theme.dart';

class LogoTinderWidget extends StatelessWidget {
  const LogoTinderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradient = CustomTheme.customGradient;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

  final double topLeftQuadrantHeight = screenHeight * 0.042; 
  final double topLeftQuadrantWidth = screenWidth * 0.050;  

  final double topRightQuadrantHeight = screenHeight * 0.047; 
  final double topRightQuadrantWidth = screenWidth * 0.048;  

  final double topHeaderCutHeight = screenHeight * 0.024;  
  final double topHeaderCutWidth = screenWidth * 0.043; 

  final double bottomSemiCircleHeight = screenHeight * 0.025;
  final double bottomSemiCircleWidth = screenWidth * 0.099; 

    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: topLeftQuadrantHeight,
              width: topLeftQuadrantWidth,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: theme.colorScheme.onPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(26, 30),
                  bottomLeft: Radius.elliptical(20, 26),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                alignment: Alignment.topRight,
                height: topRightQuadrantHeight,
                width: topRightQuadrantWidth,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: theme.colorScheme.onPrimary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.elliptical(30, 60),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 8,
          top: -4,
          child: Transform.rotate(
            angle: 2.6,
            child: Container(
              width: topHeaderCutWidth,
              height: topHeaderCutHeight,
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(76, 95),
                  topRight: Radius.elliptical(8, 10),
                  bottomLeft: Radius.elliptical(2, 10),
                  bottomRight: Radius.elliptical(70, 90),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          child: Container(
            width: bottomSemiCircleWidth,
            height: bottomSemiCircleHeight,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(50, 50),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
