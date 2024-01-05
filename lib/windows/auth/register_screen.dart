import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../Components/shared/app_button.dart';
import '../../Components/shared/ordivider.dart';
import '../../core/constants.dart';
import '../../core/router_generator.dart';
import '../../Components/shared/SocialSign.dart';
import '../../core/utilis.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //Initially password is obscure
  bool _obscureTextFieldOne = true,
      _obscureTextFieldTwo = true,
      loading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _userController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _passwordControllerConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleButton(
                  s: size,
                  onTap: () => back(context),
                  color: black5,
                  child: SvgPicture.asset(
                    "assets/icons/close.svg",
                    width: hh(size, 24),
                    height: hh(size, 24),
                  ),
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 1.5),
                Text(
                  "Let's Get Started!",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w700),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 17),
                        child: TextFormField(
                          controller: _userController,
                          style: textStyleInput,
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "This field is required";
                            }
                            if (value != null &&
                                value.isNotEmpty &&
                                value.length <= 4) {
                              return "5 digits minimum";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              CupertinoIcons.person,
                            ),
                            hintText: "Username",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          controller: _emailController,
                          style: textStyleInput,
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "This field is required";
                            }
                            if (value != null &&
                                value.isNotEmpty &&
                                !StringUtil.isValidEmail(value)) {
                              return "The email is invalid";
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              CupertinoIcons.at,
                            ),
                            hintText: "Email",
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 17),
                        child: TextFormField(
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "This field is required";
                            }
                            return null;
                          },
                          style: textStyleInput,
                          controller: _passwordController,
                          obscureText: _obscureTextFieldOne,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              CupertinoIcons.lock,
                            ),
                            hintText: "Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureTextFieldOne =
                                  !_obscureTextFieldOne;
                                });
                              },
                              child: Icon(
                                _obscureTextFieldOne
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        child: TextFormField(
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return "This field is required";
                            }
                            if (value != _passwordController.text) {
                              return "Different password";
                            }
                            return null;
                          },
                          style: textStyleInput,
                          controller: _passwordControllerConfirm,
                          obscureText: _obscureTextFieldTwo,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              CupertinoIcons.lock,
                            ),
                            hintText: "Confirm Password",
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _obscureTextFieldTwo =
                                  !_obscureTextFieldTwo;
                                });
                              },
                              child: Icon(
                                _obscureTextFieldTwo
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 1.8),
                AppButton(
                  callback: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(
                          context, RouterGenerator.loginRoute);
                    }
                  },
                  label: "Register",
                  buttonType: ButtonType.PRIMARY,
                  width: size.width,
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 2),
                Center(child: OrDivider()),
                const SizedBox(height: BUTTON_SEPARATION_SPACE),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialSign(s: size, icon: "assets/icons/logoTwitter.svg"),
                    const SizedBox(width: BUTTON_SEPARATION_SPACE * 1.5),
                    SocialSign(s: size, icon: "assets/icons/logoFacebook.svg"),
                    const SizedBox(width: BUTTON_SEPARATION_SPACE * 1.5),
                    SocialSign(s: size, icon: "assets/icons/logoApple.svg"),
                  ],
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 2),
                Center(
                  child: InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, RouterGenerator.loginRoute),
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            fontSize: 15,
                            color: const Color(0xFF24282C),
                            fontWeight: FontWeight.w500),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Login Now',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                  fontSize: 15,
                                  color: primaryColor,
                                  fontWeight: FontWeight.w700))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}