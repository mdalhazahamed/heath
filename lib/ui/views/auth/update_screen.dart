import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heath/ui/const/colors.dart';
import 'package:heath/ui/style/style.dart';
import 'package:heath/ui/views/widgets/password_input.dart';
import 'package:heath/ui/views/widgets/raounded_body.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 240, 238, 238),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              //title widget
              Text("Password Change", style: style20(Colors.black)),

              //textField widget
              SizedBox(height: 20.h),

              PasswordInput(
                hint: 'Password',
                inputAction: TextInputAction.next,
              ),
              PasswordInput(
                hint: 'New Password',
                inputAction: TextInputAction.next,
              ),
              PasswordInput(
                hint: 'Confim New Password',
                inputAction: TextInputAction.next,
              ),
              SizedBox(height: 10.h),
              //rounded widget
              InkWell(
                onTap: () {},
                child: RoundedButton(
                  color: AppColors.roundedColor,
                  buttonName: 'Update',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
