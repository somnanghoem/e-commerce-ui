import 'package:e_shoes_app/responsesive/responsive.dart';
import 'package:e_shoes_app/screen/sign/createacount/mobile_create_account.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        // Mobile Screen
        mobile: const MobileCreateAccountScreen(),
        // Tablet Screen
        tablet: Container(
          color: Colors.red,
        ),
        // Desktop Or Web Screen
        desktop: Container(
          color: Colors.black12,
        ));
  }
}
