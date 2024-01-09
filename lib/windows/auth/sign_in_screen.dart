import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/shared/CircleButton.dart';
import '../../Components/shared/app_button.dart';
import '../../Components/shared/ordivider.dart';
import '../../core/constants.dart';
import '../../core/router_generator.dart';
import '../../Components/shared/SocialSign.dart';
import '../../core/utilis.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>{
  //Initially password is obscure
  bool _obscureText = true, loading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController(),
  _passwordController = TextEditingController();

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
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close,color: Colors.black),
                  ),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE * 1.5),
                  Text(
                    "Welcome back! Glad to see you, Again!",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: primaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE * 2.5),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
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
                              hintText: "Enter your email",
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
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                CupertinoIcons.lock,
                              ),
                              hintText: "Enter your password",
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, RouterGenerator.forgotPasswordRoute),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Text(
                                  "Forgot password?",
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                      fontSize: 14,
                                      color: const Color(0xFF6A707C),
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE * 3),
                  AppButton(
                    callback: () =>
                        Navigator.pushNamed(context, RouterGenerator.dashboardRoute),
                    label: "Sign In",
                    color: Colors.white,
                    buttonType: ButtonType.PRIMARY,
                    width: size.width * 0.9,
                  ),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE * 3),
                  Center(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, RouterGenerator.registerRoute),
                      child: RichText(
                        text: TextSpan(
                          text: 'Don’t have an account? ',
                          style: Theme.of(context).textTheme.labelMedium!.copyWith(
                              fontSize: 15,
                              color: const Color(0xFF24282C),
                              fontWeight: FontWeight.w500),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Register Now',
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
                  ),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE),
                  Center(child: OrDivider()),
                  const SizedBox(height: BUTTON_SEPARATION_SPACE),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialAuth(icon: "res/icons/logoTwitter.svg"),
                      const SizedBox(width: BUTTON_SEPARATION_SPACE * 1.5),
                      SocialAuth(icon: "res/icons/logoFacebook.svg"),
                      const SizedBox(width: BUTTON_SEPARATION_SPACE * 1.5),
                      SocialAuth(icon: "res/icons/logoApple.svg"),
                    ],
                  ),
                ],
              ),
          )
        ),
      ),
    );
  }
}