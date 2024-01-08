import 'package:baby_sleep_scheduler/generated/l10n.dart';
import 'package:baby_sleep_scheduler/views/help/expandable_info.dart';
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
          label: S.of(context).HowToUseTheFerberSleepTrainerApp,
          points: [
            // 'Read this FAQ section (especially the "before you start" section)',
            S.of(context).ReadThisFAQSection,
            // 'Review the editor section and make your selection of the timing you want for your baby',
            S.of(context).ReviewTheEditor,
            // 'Before starting the training, make sure the baby is drowsy but not asleep',
            S.of(context).BeforeStartingTheTraining,
            S.of(context).OnceTheBaby,
            S.of(context).OnceYouHavePlaced,
            S.of(context).IfYouHaveABabyMonitor,
            S.of(context).AsTimeProgresses,
            S.of(context).ItIsHardTOHear,
            S.of(context).WhenTheTrainerShows,
            S.of(context).DontPickUpTheBaby,
            S.of(context).IfTheBabyISGettingQuiter,
            S.of(context).WhenYouEnterTheRoom,
            S.of(context).InTheMorningOnceTheBaby,
            S.of(context).IfNotTapped,

          ],
          further:
              S.of(context).InCaseOfAnUnsuccessful +
                  S.of(context).ForYourBenefits +
                  S.of(context).CryingTimeWillReduce +
                  S.of(context).LessThan5Mins
        ),
        ExpandableInfo(
          label: S.of(context).WhatIsTheFerberMethod,
          main:S.of(context).SecondNdFaq,
          further: S.of(context).SecondFurther,
        ),
        ExpandableInfo(
          label: S.of(context).ThirdFadLabel,
          main: S.of(context).TheProcess,
          points: [
            S.of(context).Point1,
            S.of(context).Point2,
            S.of(context).Point3,
            S.of(context).Point4,
            S.of(context).Point5,
            S.of(context).Point6,
            S.of(context).Point7,
          ],
          further:S.of(context).ThirdFurther
        ),
        ExpandableInfo(
          label: S.of(context).FourthLabel,
          main:S.of(context).FourthMain,
          further:S.of(context).FourthFurther
        ),
        ExpandableInfo(
          label: S.of(context).FifthLabel,
          main:S.of(context).FifthMain,
          further:S.of(context).FifthFurther
        ),
        ExpandableInfo(
          label: S.of(context).SixthLabel,
          main:S.of(context).SixthMain,

          further:S.of(context).SixthFurther
        ),
        ExpansionTile(
          title: Text(
          S.of(context).PrivacyPolicy,
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
                    text: S.of(context).VisitTheLinkFor,
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
                    text: '\n'+S.of(context).Or+'\n',
                  ),
                  TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w500,
                      color:
                          CustomTheme.nightTheme ? Colors.white : Colors.black,
                    ),
                    text: S.of(context).ContactUs,

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
                    text: S.of(context).Concerns,

                  ),
                ])),
              ),
            ),
          ],
        ),
        ExpandableInfo(
            label: S.of(context).Support,

            main:S.of(context).EightMain
        ),
      ],
    );
  }
}
