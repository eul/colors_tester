import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:colors_tester/amplifyconfiguration.dart';
import 'package:colors_tester/ui/app_widget.dart';
import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();

  runApp(const AppWidget());
}

Future<void> _configureAmplify() async {
  try {
    // (3)
    final authenticationPlugin = AmplifyAuthCognito();
    await Amplify.addPlugin(authenticationPlugin);

    // note that Amplify cannot be configured more than once!
    // (4)
    await Amplify.configure(amplifyconfig);
  } catch (e) {
    // error handling can be improved for sure!
    // but this will be sufficient for the purposes of this tutorial
    // (5)
    print(e);
   // logger.error('An error occurred while configuring Amplify: $e');
  }
}
