import 'package:flutter/material.dart';
import 'package:tinder/modules/splash/constants.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.whatshot,
            color: Colors.white,
            size: 54,
          ),
          Text(
            SplashConstants.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
