import 'package:flutter/material.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/forgot_password.dart';
import 'package:healthapp/homepage.dart';
import 'package:healthapp/misc.dart';
import 'package:healthapp/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool hideTopBanner = false;
  bool keyboardVisible = false;
  bool emailhasIssue = false;

  bool passwordHasIssue = false;
  bool showPassword = true;
  bool emailIsValid = true;

  @override
  Widget build(BuildContext context) {
    keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              keyboardVisible == false
                  ? const SizedBox(
                      height: 60,
                    )
                  : Container(),
              keyboardVisible == false
                  ? const Center(
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 8,
              ),
              keyboardVisible == false
                  ? const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                    )
                  : Container(),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Container(
                      height: emailhasIssue && passwordHasIssue ? 350 : 300,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width - 20,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                fontFamily: 'AvenirNext',
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              suffixText: emailIsValid ? '' : 'Invalid email',
                              suffixStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontFamily: 'AvenirNext',
                              ),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.black12, width: 0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: emailhasIssue
                                        ? Colors.red
                                        : Colors.black12,
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: primaryColor, width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              filled: true,
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                  color: secondaryColor,
                                  fontFamily: 'AvenirNext',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                            onChanged: (value) {
                              if (Misc.validateEmail(emailController.text) !=
                                  null) {
                                setState(() {
                                  emailIsValid = false;
                                });
                              } else {
                                setState(() {
                                  emailIsValid = true;
                                });
                              }
                            },
                            controller: emailController,
                          ),
                          emailhasIssue
                              ? Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Please enter your Email',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'AvenirNext'),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            obscureText: showPassword,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: primaryColor,
                                fontFamily: 'AvenirNext',
                                fontWeight: FontWeight.w600),
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                child: !showPassword
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Colors.grey,
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Colors.grey,
                                      ),
                              ),
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: Colors.black12, width: 0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: passwordHasIssue
                                        ? Colors.red
                                        : Colors.black12,
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: primaryColor, width: 1.5),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              filled: true,
                              hintText: 'Password',
                              hintStyle: const TextStyle(
                                  color: secondaryColor,
                                  fontFamily: 'AvenirNext',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                            onChanged: (value) {
                              setState(() {});
                            },
                            controller: passwordController,
                          ),
                          passwordHasIssue
                              ? Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        'Please enter a password',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'AvenirNext'),
                                      ),
                                    ),
                                  ],
                                )
                              : Container(),
                          const SizedBox(
                            height: 15,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()),
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 2.0),
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              if (emailController.text.isEmpty) {
                                setState(() {
                                  emailhasIssue = true;
                                });
                              } else {
                                setState(() {
                                  emailhasIssue = false;
                                });
                              }

                              if (passwordController.text.isEmpty) {
                                setState(() {
                                  passwordHasIssue = true;
                                });
                              } else {
                                setState(() {
                                  passwordHasIssue = false;
                                });
                              }

                              if (!passwordHasIssue &&
                                  emailIsValid &&
                                  !emailhasIssue) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                );
                              }
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width - 20,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUp()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Dont have an account ?',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'AvenirNext',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
