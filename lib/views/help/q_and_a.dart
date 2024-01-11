import 'package:baby_sleep_scheduler/generated/l10n.dart';
import 'package:baby_sleep_scheduler/views/help/expandable_info.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../theme/theme.dart';

class QandA extends StatefulWidget {
  QandA(Key key) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _QandAState();
  }
}

class _QandAState extends State<QandA> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandableInfo(
            label: "HowToUseTheFerberSleepTrainerApp".tr(),
            points: [
              // 'Read this FAQ section (especially the "before you start" section)',
              "ReadThisFAQSection".tr(),
              // 'Review the editor section and make your selection of the timing you want for your baby',
              "ReviewTheEditor".tr(),
              // 'Before starting the training, make sure the baby is drowsy but not asleep',
              "BeforeStartingTheTraining".tr(),
              "OnceTheBaby".tr(),
              "OnceYouHavePlaced".tr(),
              "IfYouHaveABabyMonitor".tr(),
              "AsTimeProgresses".tr(),
              "ItIsHardTOHear".tr(),
              "WhenTheTrainerShows".tr(),
              "DontPickUpTheBaby".tr(),
              "IfTheBabyISGettingQuiter".tr(),
              "WhenYouEnterTheRoom".tr(),
              "InTheMorningOnceTheBaby".tr(),
              "IfNotTapped".tr(),
            ],
            further: "InCaseOfAnUnsuccessful".tr() +
                "ForYourBenefits".tr() +
                "CryingTimeWillReduce".tr() +
                "LessThan5Mins".tr()),
        ExpandableInfo(
          label: "WhatIsTheFerberMethod".tr(),
          main: "SecondNdFaq".tr(),
          further: "SecondFurther".tr(),
        ),
        ExpandableInfo(
            label: "ThirdFadLabel".tr(),
            main: "TheProcess".tr(),
            points: [
              "Point1".tr(),
              "Point2".tr(),
              "Point3".tr(),
              "Point4".tr(),
              "Point5".tr(),
              "Point6".tr(),
              "Point7".tr(),
            ],
            further: "ThirdFurther".tr()),
        ExpandableInfo(
            label: "FourthLabel".tr(),
            main: "FourthMain".tr(),
            further: "FourthFurther".tr()),
        ExpandableInfo(
            label: "FifthLabel".tr(),
            main: "FifthMain".tr(),
            further: "FifthFurther".tr()),
        ExpandableInfo(
            label: "SixthLabel".tr(),
            main: "SixthMain".tr(),
            further: "SixthFurther".tr()),
        ExpansionTile(
          title: Text(
            "PrivacyPolicy".tr(),
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w500,
              color: CustomTheme.nightTheme ? Colors.white : Colors.black,
            ),
          ),
          children: [
            InkWell(
              onTap: () {
                //  launch('https://www.privacypolicygenerator.info/live.php?token=jsbAbZ0K3vhTFAZ0v7z6K02ovUGGoXEi');
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.black,
                    ),
                    text: "VisitTheLinkFor".tr(),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        launch(
                            'https://www.freeprivacypolicy.com/live/3e40fccb-47b6-42ea-a42f-3d8ac8ba0380');
                        // print('https://www.privacypolicygenerator.info/live.php?token=jsbAbZ0K3vhTFAZ0v7z6K02ovUGGoXEi');
                        final url =
                            'https://www.freeprivacypolicy.com/live/3e40fccb-47b6-42ea-a42f-3d8ac8ba0380';
                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }
                      },
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.blue,
                    ),
                    text:
                        'https://www.freeprivacypolicy.com/live/3e40fccb-47b6-42ea-a42f-3d8ac8ba0380',
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.black,
                    ),
                    text: '\n' + "Or".tr() + '\n',
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.black,
                    ),
                    text: "ContactUs".tr(),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String email = Uri.encodeComponent(
                            "ferber.sleep.trainer@gmail.com");
                        String subject = Uri.encodeComponent("Hello");
                        String body = Uri.encodeComponent("Hi!");
                        print(subject); //output: Hello%20Flutter
                        Uri mail = Uri.parse(
                            "mailto:$email?subject=$subject&body=$body");
                        if (await launch(
                            'mailto:$email?subject=$subject&body=$body')) {
                          //email app opened
                        } else {
                          //email app is not opened
                        }
                        /*// print('https://www.privacypolicygenerator.info/live.php?token=jsbAbZ0K3vhTFAZ0v7z6K02ovUGGoXEi');
                        final url =
                            'https://www.freeprivacypolicy.com/live/3e40fccb-47b6-42ea-a42f-3d8ac8ba0380';
                        if (await canLaunch(url)) {
                          await launch(
                            url,
                            forceSafariVC: false,
                          );
                        }*/
                      },
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.blue,
                    ),
                    text: 'ferber.sleep.trainer@gmail.com',
                  ), //
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.black,
                    ),
                    text: "Concerns".tr(),
                  ),
                ])),
              ),
            ),
          ],
        ),
        ExpandableInfo(label: "Support".tr(), main: "EightMain".tr()),
      ],
    );
  }
}
