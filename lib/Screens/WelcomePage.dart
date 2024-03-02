import 'package:cleaneo_vendor/Screens/Auth/Login.dart';
import 'package:cleaneo_vendor/Screens/Auth/Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//AppLocalizations.of(context)!.helloWorld
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Container(
        color: const Color(0xff364259),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset("assets/images/welcome24.svg"),
            ),
            SizedBox(height: mQuery.size.height * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Center(
                  child: Text(
                AppLocalizations.of(context)!.agewarning,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: mQuery.size.height * 0.015,
                    fontFamily: "PoppinsMedium"),
              )),
            ),
            SizedBox(
              height: mQuery.size.height * 0.05,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      // onTap: () {
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) {
                      //     return LoginPage();
                      //   }));
                      // },
                      child: Container(
                        width: double.infinity,
                        height: mQuery.size.height * 0.06,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFE04F),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          AppLocalizations.of(context)!.enterNumber,
                          style: TextStyle(
                              color: Color(0xFF8B0D35),
                              fontSize: mQuery.size.height * 0.02,
                              fontFamily: "PoppinsBold"),
                        )),
                      ),
                    ),

                    // Divider Row
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
