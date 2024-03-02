import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cleaneo_vendor/Screens/WelcomePage.dart';
import 'package:cleaneo_vendor/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _selectedLanguage = 'en'; // Default language selection

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'logoTag',
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/splashmain.png",
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.4),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: mQuery.size.height * 0.03),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: mQuery.size.height * 0.4,
                  ),
                  const Text(
                    "Embrace Cozy\nComfort",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 40,
                        color: Colors.white,
                        height: 1.0),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.015,
                  ),
                  const Text(
                    "Uncover Elegant Comfort. Book Now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 14,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedLanguage = 'en';
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.5,
                                  color: _selectedLanguage == 'en'
                                      ? const Color(0xFFFFE04F)
                                      : Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.language,
                                    color: _selectedLanguage == 'en'
                                        ? const Color(0xFFFFE04F)
                                        : Colors.white,
                                  ),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      color: _selectedLanguage == 'en'
                                          ? const Color(0xFFFFE04F)
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedLanguage = 'hi';
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 1.7,
                                  color: _selectedLanguage == 'hi'
                                      ? const Color(0xFFFFE04F)
                                      : Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.translate,
                                    color: _selectedLanguage == 'hi'
                                        ? const Color(0xFFFFE04F)
                                        : Colors.white,
                                  ),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    'عربي',
                                    style: TextStyle(
                                      fontFamily: 'PoppinsMedium',
                                      color: _selectedLanguage == 'hi'
                                          ? const Color(0xFFFFE04F)
                                          : Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mQuery.size.height * 0.03,
                  ),
                  Container(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        // Set the locale dynamically based on the selected language
                        MyApp.setLocale(context, _selectedLanguage);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const WelcomePage(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255,
                                255)), // Set button background color
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                50.0), // Set border radius
                          ),
                        ),
                        elevation: MaterialStateProperty.all<double>(
                            0), // Set elevation
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF8B0D35),
                          fontFamily: 'PoppinsBold',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
