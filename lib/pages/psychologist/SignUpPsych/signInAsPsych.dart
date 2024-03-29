import 'package:fyp_project/common/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:fyp_project/common/widgets/customTextField.dart';
import 'package:fyp_project/pages/psychologist/forgotPasswordPsych/forgotPasswdPsych.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../main.dart';

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

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  final AuthService authService = AuthService();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  void signInUser() {
    authService.signInUser(
        context: context,
        email: _emailcontroller.text,
        password: _passwordcontroller.text,
        userType: 'psycologist');
  }

  @override
  void initState() {
    super.initState();
    loadSavedData();
  }

  void loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _emailcontroller.text = prefs.getString("email") ?? "";
      _passwordcontroller.text = prefs.getString("password") ?? "";
      // username.text = prefs.getString("username") ?? "";
    });
  }

  void saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("email", _emailcontroller.text);
    prefs.setString("password", _passwordcontroller.text);
    // prefs.setString("username", username.text);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFD9EDBF),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/signIn.png',
                  height: 200,
                  width: 500,
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xFF4D5D54)),
                ),
                const Text(
                  'Sign in to access your account',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Rubik Regular',
                      color: Colors.black),
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
                        color: Colors.black),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(
                controller: _emailcontroller,
                hintText: 'Email',
                labeltext: 'Enter your email',
                prefixIconString: 'email',
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 21.0, bottom: 12.0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Medium',
                        color: Colors.black),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                controller: _passwordcontroller,
                hintText: 'Password',
                labeltext: 'Enter your password',
                prefixIconString: 'password',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
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
                          transitionDuration: const Duration(microseconds: 500),
                        ),
                      );
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xFF4D5D54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth >= 600 ? 100 : 20),
              child: CustomButton(
                  text: 'Sign In',
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      signInUser();
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashScreenState.KEYLOGIN, true);
                      sharedPref.setString('email', _emailcontroller.text);
                      sharedPref.setString(
                          'password', _passwordcontroller.text);
                    }
                  }),
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "New Member? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubik Regular',
                      color: Color(0xff060607)),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed("/createAccAs");
                    // Navigator.pushNamed(context,'/signup');
                  },
                  child: const Text(
                    "Register now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Rubik Regular',
                        color: Color(0xFF4D5D54)),
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
