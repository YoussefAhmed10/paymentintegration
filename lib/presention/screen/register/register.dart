import 'package:flutter/material.dart';
import 'package:paymentintegration/presention/shared/style/color.dart';
import 'package:paymentintegration/presention/widget/Buttons/elvated_button.dart';
import 'package:paymentintegration/presention/widget/form_field_text/text_form_field.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  final firstNameController = TextEditingController();

  final lastNameController = TextEditingController();

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final amountCentController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: redColor,
            title: const Text('PaymentIntegration'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    DefaultFormField(
                      controller: firstNameController,
                      validate: (value) {
                        if (value == null) {
                          return 'Please Enter Your First Name';
                        }
                        return null;
                      },
                      type: TextInputType.name,
                      label: const Text('First Name'),
                      hint: 'Enter Your First Name',
                      preIcon: Icons.person,
                    ),
                    const SizedBox(height: 20),
                    DefaultFormField(
                      controller: lastNameController,
                      validate: (value) {
                        if (value == null) {
                          return 'Please Enter Your Last Name';
                        }
                        return null;
                      },
                      type: TextInputType.name,
                      label: const Text('Last Name'),
                      hint: 'Enter Your Last Name',
                      preIcon: Icons.person,
                    ),
                    const SizedBox(height: 20),
                    DefaultFormField(
                      controller: emailController,
                      validate: (value) {
                        if (value == null) {
                          return 'Please Enter Your Email';
                        }
                        return null;
                      },
                      type: TextInputType.name,
                      label: const Text(' Email '),
                      hint: 'Enter Your Email',
                      preIcon: Icons.email,
                    ),
                    const SizedBox(height: 20),
                    DefaultFormField(
                      controller: phoneController,
                      validate: (value) {
                        if (value == null) {
                          return 'Please Enter Your Phone';
                        }
                        return null;
                      },
                      type: TextInputType.phone,
                      label: const Text('Phone'),
                      hint: 'Enter Your Phone',
                      preIcon: Icons.phone,
                    ),
                    const SizedBox(height: 20),
                    DefaultFormField(
                      controller: amountCentController,
                      validate: (value) {
                        if (value == null) {
                          return 'Please Enter Your Price';
                        }
                        return null;
                      },
                      type: TextInputType.number,
                      label: const Text(' Price'),
                      hint: 'Enter Your  Price',
                      preIcon: Icons.monetization_on_outlined,
                    ),
                    const SizedBox(height: 30),
                    DefaultElevatedButton(
                      pressed: () {},
                      text: 'Pay',
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
