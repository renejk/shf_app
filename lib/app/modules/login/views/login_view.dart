import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shf_app/utils/references.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // background
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageReferences.authBackground),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // login options social media phone, google and facebook
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    left: 45,
                    right: 45),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // login with phone
                    MediaButton(
                        image: iconReferences.mobile,
                        text: 'Accede con Tu Movil',
                        action: () {
                          print('test');
                        }),

                    // login with google
                    MediaButton(
                        image: iconReferences.google,
                        text: 'Accede con Google',
                        action: () => controller.login()),

                    // login with facebook
                    MediaButton(
                        image: iconReferences.facebook,
                        text: 'Accede con facebook',
                        action: () {
                          print('test');
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediaButton extends StatelessWidget {
  const MediaButton({
    super.key,
    required this.image,
    required this.text,
    required this.action,
  });

  final String image;
  final String text;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 18),
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 18, right: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xffE5E5E5),
            ),
          ),
          width: 270,
          height: 41,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                image,
                height: 24,
              ),
              Text(text,
                  style: const TextStyle(
                    fontFamily: 'popins',
                    fontSize: 14,
                  )),
            ],
          ),
        ),
        onTap: () => action(),
      ),
    );
  }
}
