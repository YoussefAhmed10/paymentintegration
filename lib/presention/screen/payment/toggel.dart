import 'package:flutter/material.dart';
import 'refcode.dart';
import 'visacard.dart';
import '../../widget/navigattion/navigation.dart';

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Choose Your Payment Way'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () {
                      navigatTo(context, const VisaCardScreen());
                    },
                    child: Container(
                      width: 250,
                      // height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            // height: 200,
                            width: 150,
                            image: AssetImage('assets/card.png'),
                          ),
                          SizedBox(height: 20),
                          Text('Pay With Card'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 100),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: InkWell(
                    onTap: () {
                      navigatTo(context, const RefCodeScreen());
                    },
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.blue)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            width: 200,
                            image: AssetImage('assets/refe.png'),
                          ),
                          SizedBox(height: 20),
                          Text('Pay With RefCode'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
