
import 'package:flutter/material.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';

import '../router.dart';

/// App Widget holder
class AppWidget extends StatelessWidget {

  /// Const constructor
  const AppWidget({super.key});

  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return Authenticator(
      child: MaterialApp.router(
        routerConfig: router,
        builder: Authenticator.builder(),
        theme: ThemeData(
          colorScheme:
          ColorScheme.fromSwatch(primarySwatch: Colors.amber)
              .copyWith(
            background: const Color(0xff82CFEA),
          ),
        ),
      ),
    );
  }
}
