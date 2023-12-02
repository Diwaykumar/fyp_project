import 'package:fyp_project/common/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:fyp_project/common/widgets/custom_textfield.dart';
import '../psychologist/forgot-passwd_psych.dart';

class SignInAsPsych extends StatelessWidget {
  const SignInAsPsych({super.key});

  @override
  Widget build(BuildContext context) {
    return const FormFields();
  }
}

class FormFields extends StatefulWidget {
  const FormFields({super.key});

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  final _formKey = GlobalKey<FormState>();
  String errorMessage1 = "";
  String errorMessage2 = "";

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  final AuthService authService = AuthService();

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  void signInUser() {
    authService.signInUser(
        context: context,
        email: emailcontroller.text,
        password: passwordcontroller.text,
        userType: 'psycologist');
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20, left: 20),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Color(0xFF0097A7),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Image.asset(
                'assets/signIn.png',
                height: 200,
                width: 500,
              ),
            ),
            const Column(
              children: [
                Text(
                  'Welcome back',
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
                Text(
                  'Sign in to access your account',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 21, bottom: 12),
                  child: Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff060607)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: emailcontroller,
                hintText: 'Email',
                labeltext: 'Enter Your Email',
                prefixIconString: 'email',
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 21, bottom: 12),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff060607)),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: passwordcontroller,
                hintText: 'Password',
                labeltext: 'Enter Your Password',
                prefixIconString: 'password',
              ),
            ),
          Padding( padding: const EdgeInsets.only(left: 240),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) =>
                              const ForgotPasswordPsych(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var begin = 0.0;
                            var end = 1.0;
                            var curve = Curves.ease;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            return FadeTransition(
                              opacity: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        color: Colors.cyan[700],
                      ),
                    ),
                  ),
                ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth >= 600 ? 100 : 20),
              child: CustomButton(
                  text: 'Sign In',
                  fontsize: 20,
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      signInUser();
                    }
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 35,
                ),
                const Text(
                  "New Member? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff060607)),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed("/createAccAs");
                    // Navigator.pushNamed(context,'/signup');
                  },
                  child: Text(
                    "Register now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'Rubik Medium',
                        color: Colors.cyan[700]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
