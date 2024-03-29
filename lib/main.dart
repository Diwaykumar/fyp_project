import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fyp_project/Services/auth_service.dart';
import 'package:fyp_project/pages/onboarding/createAcc.dart';
import 'package:fyp_project/pages/onboarding/createAccAs.dart';
import 'package:fyp_project/pages/onboarding/signInAs.dart';
import 'package:fyp_project/pages/patient/Home/homePatient.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Feel%20Good/getChill.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Feel%20Good/getInspired.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Feel%20Good/selfEsteemBoosterKit.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Getting%20Through%20It/AstronautsGuide.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Getting%20Through%20It/panicAttack101.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Getting%20Through%20It/permissionToGrieve.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Getting%20Through%20It/socialAnxiety.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Getting%20Through%20It/turnABadDayAround.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Healthy%20Habits/breakUpWithYourPhone.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Healthy%20Habits/financialStress.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Healthy%20Habits/learningToSleep.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Healthy%20Habits/makingMeditationStick.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/How%20We%20Work/buildWorkLifeBalance.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/How%20We%20Work/dealingWithBurnout.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/How%20We%20Work/gainingConfidenceAtWork.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Parenting%20Burnout/buildingAFamilyPractice.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Parenting%20Burnout/dealingWithStressedKids.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Parenting%20Burnout/parentingBurnout.dart';
import 'package:fyp_project/pages/patient/home/Explore/Collection/Articles/Parenting%20Burnout/parentingSOS.dart';
import 'package:fyp_project/pages/patient/home/moduleSelect.dart';
import 'package:fyp_project/pages/patient/SignUpPatient/createAccountPatient.dart';
import 'package:fyp_project/pages/patient/ForgotPassword/forgotPasswdPat2.dart';
import 'package:fyp_project/pages/patient/ForgotPassword/forgotPasswdPat.dart';
import 'package:fyp_project/pages/patient/ForgotPassword/forgotPasswdPat3.dart';
import 'package:fyp_project/pages/patient/SignUpPatient/signInAsPatient.dart';
import 'package:fyp_project/providers/user_provider.dart';
import 'package:fyp_project/pages/psychologist/SignUpPsych/createAccountPsych.dart';
import 'package:fyp_project/pages/psychologist/homePsych.dart';
import 'package:fyp_project/pages/psychologist/SignUpPsych/signInAsPsych.dart';
import 'package:fyp_project/pages/onboarding/onBoarding.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'pages/patient/home/Explore/Collection/Articles/Getting Through It/healingHeartBreak.dart';
import 'pages/psychologist/forgotPasswordPsych/forgotPasswdPsych.dart';
import 'pages/psychologist/forgotPasswordPsych/forgotPasswdPsych2.dart';
import 'pages/psychologist/forgotPasswordPsych/forgotPasswdPsych3.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed(const Duration(seconds: 2));
  FlutterNativeSplash.remove();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/createAcc': (context) => const CreateAccount(),
        '/onBoarding': (context) => const Onboarding(),
        '/createAccAs': (context) => const CreateAccAs(),
        '/signInAs': (context) => const SignInAs(),
        '/createAccAsPsych': (context) => const CreateAccountPsych(),
        '/createAccAsPatient': (context) => const CreateAccountPatient(),
        '/signInAsPatient': (context) => const SignInAsPatient(),
        '/signInAsPsych': (context) => const SignInAsPsych(),
        '/homePatient': (context) => const HomePatient(),
        '/homePsych': (context) => const HomePsych(),
        '/forgotPasswdPatient': (context) => const ForgotPasswordPatient(),
        '/forgotPasswdPatient2': (context) => const ForgotPasswdPatient2(),
        '/forgotPasswdPatient3': (context) => const ForgotPasswdPatient3(),
        '/forgotPasswdPsych': (context) => const ForgotPasswordPsych(),
        '/forgotPasswdPsych2': (context) => const ForgotPasswdPsych2(),
        '/forgotPasswdPsych3': (context) => const ForgotPasswdPsych3(),
        '/selectModule': (context) => const SelectModule(),
        '/getChill': (context) => const GetChill(),
        '/getInspired': (context) => const GetInspired(),
        'selfEsteemBoosterKit': (context) => const SelfEsteemBoosterKit(),
        '/astronautsGuide': (context) => const AstronautsGuide(),
        '/healingHeartBreak': (context) => const HealingHeartBreak(),
        '/panicAttack101': (context) => const PanicAttack101(),
        '/permissionToGrieve': (context) => const PermissionToGrieve(),
        '/socialAnxiety': (context) => const SocialAnxiety(),
        '/turnOutBadDayAround': (context) => const TurnABadDayAround(),
        '/breakUpWithYourPhone': (context) => const BreakUpWithYourPhone(),
        '/financialStress': (context) => const FinancialStress(),
        '/learningToSleep': (context) => const LearningToSleep(),
        '/makingMeditationStick': (context) => const MakingMeditationStick(),
        '/buildWorkLifeBalance': (context) => const BuildWorkLifeBalance(),
        '/dealingWithBurnout': (context) => const DealingWithBurnout(),
        '/gainingConfidenceAtWork': (context) => const GainingConfidenceAtWork(),
        '/buildingAFamilyPractice': (context) =>
            const BuildingAFamilyPractice(),
        '/dealingWithStressedKids': (context) =>
            const DealingWithStressedKids(),
        '/parentingBurnout': (context) => const ParentingBurnout(),
        '/parentingSOS': (context) => const ParentingSOS(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final AuthService authService = AuthService();
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(KEYLOGIN);
    var userType = sharedPref
        .getString('userType'); // Fetch userType from shared preferences

    if (isLoggedIn != null) {
      if (isLoggedIn) {
        if (userType == 'patient') {
          Navigator.pushReplacementNamed(context, "/homePatient");
        } else if (userType == 'psychologist') {
          Navigator.pushReplacementNamed(context, "/homePsych");
        }
      } else {
        Navigator.pushReplacementNamed(context, "/onBoarding");
      }
    } else {
      Navigator.pushReplacementNamed(context, "/onBoarding");
    }
  }
}
