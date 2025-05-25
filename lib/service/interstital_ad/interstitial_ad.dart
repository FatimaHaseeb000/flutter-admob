// import 'package:google_mobile_ads/google_mobile_ads.dart';
// import 'dart:io';

// class InterstitialAdManager {
//   static InterstitialAd? _interstitialAd;
//   static bool _isAdLoaded = false; // Track if the ad is loaded

//   static final adUnitId = Platform.isAndroid
//       ? 'ca-app-pub-3940256099942544/1033173712'
//       : 'ca-app-pub-3940256099942544/4411468910';

//   /// Load an interstitial ad
//   static void loadAd() {
//     if (_isAdLoaded) {
//       print("Ad is already loaded. No need to load again.");
//       return; // Prevent multiple ad requests
//     }

//     InterstitialAd.load(
//       adUnitId: adUnitId,
//       request: const AdRequest(),
//       adLoadCallback: InterstitialAdLoadCallback(
//         onAdLoaded: (ad) {
//           print("Interstitial ad loaded.");
//           _interstitialAd = ad;
//           _isAdLoaded = true;

//           // Set up callbacks for the ad
//           ad.fullScreenContentCallback = FullScreenContentCallback(
//             onAdShowedFullScreenContent: (_) {
//               print("Ad is showing.");
//             },
//             onAdDismissedFullScreenContent: (ad) {
//               print("Ad dismissed.");
//               ad.dispose();
//               _isAdLoaded = false; // Reset the ad loaded flag
//             },
//             onAdFailedToShowFullScreenContent: (ad, error) {
//               print("Ad failed to show: $error");
//               ad.dispose();
//               _isAdLoaded = false; // Reset the ad loaded flag
//             },
//           );
//         },
//         onAdFailedToLoad: (error) {
//           print("Failed to load interstitial ad: $error");
//           _isAdLoaded = false; // Ensure the flag is reset
//         },
//       ),
//     );
//   }

//   /// Show the interstitial ad if available
//   static void showAd() {
//     if (_interstitialAd != null && _isAdLoaded) {
//       _interstitialAd!.show();
//       _interstitialAd = null; // Prevent reuse
//       _isAdLoaded = false; // Reset the flag
//     } else {
//       print("Ad not ready yet.");
//     }
//   }

//   /// Check if the ad is available
//   static bool isAdAvailable() {
//     return _isAdLoaded;
//   }

//   /// Dispose of the ad
//   static void disposeAd() {
//     _interstitialAd?.dispose();
//     _interstitialAd = null;
//     _isAdLoaded = false;
//   }
// }