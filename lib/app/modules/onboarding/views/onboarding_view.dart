import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mobile_mechanic/app/routes/app_pages.dart';
import 'package:mobile_mechanic/app/utils/colors.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  OnboardingView({Key? key}) : super(key: key);
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (_) => const HomePage()),
    // );
    Get.offAndToNamed(Routes.SELECT_CATEGORY);
  }

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/sample.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = double.infinity]) {
    return Image.asset(
      'assets/$assetName',
      width: width,
      fit: BoxFit.fill,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(
        fontSize: 20.0, fontWeight: FontWeight.w500, color: AppColors.bodyText);

    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
        bodyTextStyle: bodyStyle,
        // bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        pageColor: AppColors.backgroundColor,
        imagePadding: EdgeInsets.zero,
        safeArea: 0);

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: AppColors.backgroundColor,
      allowImplicitScrolling: true,
      // autoScrollDuration: 8000,
      // infiniteAutoScroll: true,

      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: "Convenient Services",
          body:
              "Mobile Mechanic  provides you with reliable and convenient automotive services at the touch of a button.",
          image: _buildImage('image1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Discounted Rates",
          body:
              "Sign up now and enjoy your first service at a discounted rate.",
          image: _buildImage('image2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Become a Top Mechanic",
          body: "Boost your productivity and flexibility with Us",
          image: _buildImage('image3.png'),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "Title of last page - reversed",
        //   bodyWidget: const Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 2,
        //     imageFlex: 4,
        //     bodyAlignment: Alignment.bottomCenter,
        //     imageAlignment: Alignment.topCenter,
        //   ),
        //   image: _buildImage('img1.jpg'),
        //   reverse: true,
        // ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(10.0), // Set your desired radius
          ),
          side: const BorderSide(
            color: AppColors.buttonColor, // Set your desired border color
            width: 1.0, // Set your desired border width
          ),
        ),
        onPressed: () {
          _onIntroEnd(context);
        },
        child: const Text('Skip',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: AppColors.buttonColor)),
      ),
      next: const Text('Next'),
      done: TextButton(
        iconAlignment: IconAlignment.end,
        onPressed: () {
          _onIntroEnd(context);
        },
        child: Text('Get Started'),
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 15),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Set your desired radius
            ),
            backgroundColor: AppColors.buttonColor,
            foregroundColor: Colors.white),
      ),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(10),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
          size: Size(5.0, 5.0),
          color: AppColors.bodyText,
          activeSize: Size(25.0, 5.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          activeColor: AppColors.buttonColor),
      dotsContainerDecorator: const ShapeDecoration(
        color: AppColors.backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
      nextStyle: TextButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          foregroundColor: Colors.white),
    );
  }
}



//  TextButton.icon(
//         iconAlignment: IconAlignment.end,
//         onPressed: () {},
//         icon: const Icon(
//           Icons.arrow_forward,
//           // color: AppColors.buttonColor,
//         ),
//         label: const Text('Next'),
//         style: TextButton.styleFrom(
//             shape: RoundedRectangleBorder(
//               borderRadius:
//                   BorderRadius.circular(10.0), // Set your desired radius
//             ),
//             backgroundColor: AppColors.buttonColor,
//             foregroundColor: Colors.white),
//       ),