import 'package:flutter/material.dart';
import 'package:mockup_tinder/models/sign_in_button_model.dart';

class SignInButtonWidget extends StatelessWidget{
final SignInButtonModel signInButtonModel;

const SignInButtonWidget({super.key, required this.signInButtonModel});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context).size;
    final widthScreen = mediaQuery.width;
    final heightScreen = mediaQuery.height;
    final heightButton = heightScreen* 0.050;
    final widthButton = widthScreen * 0.730;
    double iconSize = MediaQuery.of(context).size.width * 0.05;

    return Container(
          alignment: Alignment.center,
          height: heightButton,
          width: widthButton,
          decoration:BoxDecoration(
                color: theme.scaffoldBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                border: Border.all(color: theme.colorScheme.onPrimary),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Icon(signInButtonModel.icon, color: theme.colorScheme.onPrimary, size: iconSize,),
                  ),
                  Flexible(
                    child: Text(
                      signInButtonModel.text,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
    );
  }
}