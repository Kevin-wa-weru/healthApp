import 'package:flutter/material.dart';
import 'package:healthapp/constants.dart';
import 'package:healthapp/misc.dart';
import 'package:healthapp/sign_in.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();

  bool hideTopBanner = false;
  bool keyboardVisible = false;
  bool emailhasIssue = false;

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
                        'Forgot Password ?',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 30,
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
                        'Enter your email address to reset',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  : Container(),
              const SizedBox(
                height: 8,
              ),
              keyboardVisible == false
                  ? const Center(
                      child: Text(
                        'your password',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'AvenirNext',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  : Container(),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 0.0),
                    child: Container(
                      height: 300,
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
                                  'Submit',
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
                                    builder: (context) => const SignIn()),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Already have an account ?',
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
                                  'Sign In',
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
