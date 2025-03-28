import 'package:flutter/material.dart';
import 'package:mockup_tinder/theme/custom_theme.dart';

class LogoTinderWidget extends StatelessWidget {
  const LogoTinderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final gradient = CustomTheme.customGradient;

    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    // double scaleFactorHeight = screenHeight / 812;  // altura do iphone X
    // double scaleFactorWidth = screenWidth / 375;  // largura do iphone 8

  // final double topLeftQuadrantHeight = getResponsiveHeight(context, 0.042); // 34 / 812
  // final double topLeftQuadrantWidth = getResponsiveWidth(context, 0.064);  // 24 / 375

  // final double topRightQuadrantHeight = getResponsiveHeight(context, 0.047); // 38 / 812
  // final double topRightQuadrantWidth = getResponsiveWidth(context, 0.048);  // 18 / 375

  // final double bottomSemiCircleHeight = getResponsiveHeight(context, 0.025); // 20 / 812
  // final double bottomSemiCircleWidth = getResponsiveWidth(context, 0.112);   // 42 / 375

  // final double topHeaderCutHeight = getResponsiveHeight(context, 0.024);   // 20 / 812
  // final double topHeaderCutWidth = getResponsiveWidth(context, 0.043); // 16 / 375
  


    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 34,
              width: 24,
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
                height: 38,
                width: 18,
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
              width: 20,
              height: 16,
              decoration: BoxDecoration(
                // color: theme.scaffoldBackgroundColor,
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
            width: 42,
            height: 20,
            decoration: BoxDecoration(
              color: theme.colorScheme.onPrimary,
              borderRadius: BorderRadius.vertical(
bottom: Radius.elliptical(50, 50)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
