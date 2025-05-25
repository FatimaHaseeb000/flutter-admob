import 'package:flutter/material.dart';
// import 'package:flutter_application/service/interstital_ad/interstitial_ad.dart';
// import 'package:flutter_application/screens/main_screen/main_screen.dart'; // Import your MainScreen
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();}

//     // Load the interstitial ad
//     InterstitialAdManager.loadAd();

//     // Delay for 4 seconds and then show the ad or navigate
//     Future.delayed(const Duration(seconds: 4), () {
//       if (InterstitialAdManager.isAdAvailable()) {
//         InterstitialAdManager.showAd();
//         // Navigate to the main screen after the ad is dismissed
//         InterstitialAdManager.disposeAd(); // Ensure the ad is disposed
//         _navigateToMainScreen();
//       } else {
//         print("Ad not ready yet.");
//         _navigateToMainScreen(); // Navigate directly if the ad is not ready
//       }

//   /// Navigate to the main screen
//   void _navigateToMainScreen() {
//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(builder: (context) => const MainScreen()), // Navigate to MainScreen
//     );
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/animations/splash_animation.json', // Path to your Lottie animation
          width: 200,
          height: 200,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

  
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

// // class SplashScreen extends StatefulWidget
// // {
// //   const SplashScreen({super.key});
  
// //   @override
// //   State<SplashScreen> createState()=> _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen>
// // {
// //   void initState()
// //   {
// //     super.initState();
// //     // Navigate to the main screen after 3 seconds
// //     Future.delayed(const Duration(seconds: 8), () {
// //       Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(builder: (context) => const MainScreen()), // Replace with your main screen
// //       );
// //     });
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body:center
// //     )
// //   }
  
// // }