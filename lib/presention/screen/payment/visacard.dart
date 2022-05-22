// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:paymentintegration/presention/screen/register/register.dart';
import 'package:paymentintegration/presention/shared/local/constant.dart';
import 'package:paymentintegration/presention/widget/Buttons/text_button.dart';
import 'package:paymentintegration/presention/widget/navigattion/navigation.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VisaCardScreen extends StatelessWidget {
  const VisaCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              finishThePaymentAndGetBackToRegisterScreen(context);
            },
            icon: const Icon(Icons.exit_to_app),
          ),
        ],
        title: const Text('Visa'),
      ),
      body: WebView(
        initialUrl:
            'https://accept.paymob.com/api/acceptance/iframes/378545?payment_token=$finalTokenCard',
        javascriptMode: JavascriptMode.unrestricted,
        onProgress: (int progress) {
          print('WebView is loading (progress : $progress%)');
        },
        javascriptChannels: <JavascriptChannel>{
          _toasterJavascriptChannel(context),
        },
        onPageStarted: (String url) {
          print('Page started loading: $url');
        },
        onPageFinished: (String url) {
          print('Page finished loading: $url');
        },
        gestureNavigationEnabled: true,
        backgroundColor: const Color(0x00000000),
      ),
    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
      name: 'Toaster',
      onMessageReceived: (JavascriptMessage message) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message.message)),
        );
      },
    );
  }

  finishThePaymentAndGetBackToRegisterScreen(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Are You Sure That You Finish The Payment?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CustomeTButton(
              pressed: () {
                navigateAndFinsh(context, RegisterScreen());
              },
              text: 'Yes',
            ),
            CustomeTButton(
              pressed: () {
                Navigator.pop(context);
              },
              text: 'No',
            ),
          ],
        );
      },
    );
  }
}
