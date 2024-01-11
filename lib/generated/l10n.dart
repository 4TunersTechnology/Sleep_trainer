// // GENERATED CODE - DO NOT MODIFY BY HAND
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'intl/messages_all.dart';

// // **************************************************************************
// // Generator: Flutter Intl IDE plugin
// // Made by Localizely
// // **************************************************************************

// // ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// // ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// // ignore_for_file: avoid_redundant_argument_values

// class S {
//   S();
  
//   static S current;
  
//   static const AppLocalizationDelegate delegate =
//     AppLocalizationDelegate();

//   static Future<S> load(Locale locale) {
//     final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
//     final localeName = Intl.canonicalizedLocale(name); 
//     return initializeMessages(localeName).then((_) {
//       Intl.defaultLocale = localeName;
//       S.current = S();
      
//       return S.current;
//     });
//   } 

//   static S of(BuildContext context) {
//     return Localizations.of<S>(context, S);
//   }

//   /// `Your session ended automatically due to inactivity.`
//   String get YourSessionEndedAutomaticallyDueToInactivity {
//     return Intl.message(
//       'Your session ended automatically due to inactivity.',
//       name: 'YourSessionEndedAutomaticallyDueToInactivity',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Trainer: Training timer, which guides you through to applying the Ferber method for your child.`
//   String get TrainerTrainingTimerWhichGuidesYouThroughToApplyingTheFerberMethodForYourChild {
//     return Intl.message(
//       'Trainer: Training timer, which guides you through to applying the Ferber method for your child.',
//       name: 'TrainerTrainingTimerWhichGuidesYouThroughToApplyingTheFerberMethodForYourChild',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Activity: Activity log, which shows you the statistics of your child's sleep training activity till date.`
//   String get OnbordingActivity {
//     return Intl.message(
//       'Activity: Activity log, which shows you the statistics of your child\'s sleep training activity till date.',
//       name: 'OnbordingActivity',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Notice how your baby's crying time is reducing in this screen.`
//   String get OnbordingActivity2 {
//     return Intl.message(
//       'Notice how your baby\'s crying time is reducing in this screen.',
//       name: 'OnbordingActivity2',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Help & FAQ: Learn about the Ferber method and how to use the app for sleep training your baby. Reading this section will help you prepare well before starting.`
//   String get OnbordingHelp {
//     return Intl.message(
//       'Help & FAQ: Learn about the Ferber method and how to use the app for sleep training your baby. Reading this section will help you prepare well before starting.',
//       name: 'OnbordingHelp',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Editor: Select which form of sleep method you would like to follow, and customize the timer to suit your needs.`
//   String get OnbordingEditor {
//     return Intl.message(
//       'Editor: Select which form of sleep method you would like to follow, and customize the timer to suit your needs.',
//       name: 'OnbordingEditor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `SKIP`
//   String get skip {
//     return Intl.message(
//       'SKIP',
//       name: 'skip',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `hello`
//   String get hello {
//     return Intl.message(
//       'hello',
//       name: 'hello',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Clear training activity`
//   String get ClearTrainingActivity {
//     return Intl.message(
//       'Clear training activity',
//       name: 'ClearTrainingActivity',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Can't clear logs while a session is in progress.`
//   String get CantClearLogs {
//     return Intl.message(
//       'Can\'t clear logs while a session is in progress.',
//       name: 'CantClearLogs',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Delete all recorded activity? This action is irreversible.`
//   String get DeleteAllRecordedActivityThis {
//     return Intl.message(
//       'Delete all recorded activity? This action is irreversible.',
//       name: 'DeleteAllRecordedActivityThis',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Yes`
//   String get Yes {
//     return Intl.message(
//       'Yes',
//       name: 'Yes',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `No`
//   String get No {
//     return Intl.message(
//       'No',
//       name: 'No',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Are you sure you want to delete this entry?`
//   String get AreYouSureYouWantToDeleteThisEntry {
//     return Intl.message(
//       'Are you sure you want to delete this entry?',
//       name: 'AreYouSureYouWantToDeleteThisEntry',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `min`
//   String get min {
//     return Intl.message(
//       'min',
//       name: 'min',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Crying`
//   String get Crying {
//     return Intl.message(
//       'Crying',
//       name: 'Crying',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Awake`
//   String get Awake {
//     return Intl.message(
//       'Awake',
//       name: 'Awake',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Sleeping`
//   String get Sleeping {
//     return Intl.message(
//       'Sleeping',
//       name: 'Sleeping',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Time to Sleep`
//   String get TimeToSleep {
//     return Intl.message(
//       'Time to Sleep',
//       name: 'TimeToSleep',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Day`
//   String get Day {
//     return Intl.message(
//       'Day',
//       name: 'Day',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `training`
//   String get training {
//     return Intl.message(
//       'training',
//       name: 'training',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Sleep`
//   String get Sleep {
//     return Intl.message(
//       'Sleep',
//       name: 'Sleep',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `No recorded logs!`
//   String get NoRecordedLogs {
//     return Intl.message(
//       'No recorded logs!',
//       name: 'NoRecordedLogs',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Alarms`
//   String get Alarms {
//     return Intl.message(
//       'Alarms',
//       name: 'Alarms',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `See more`
//   String get SeeMore {
//     return Intl.message(
//       'See more',
//       name: 'SeeMore',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Settings`
//   String get Settings {
//     return Intl.message(
//       'Settings',
//       name: 'Settings',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `TUTORIAL`
//   String get TUTORIAL {
//     return Intl.message(
//       'TUTORIAL',
//       name: 'TUTORIAL',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `FAQ`
//   String get FAQ {
//     return Intl.message(
//       'FAQ',
//       name: 'FAQ',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Dark Theme`
//   String get DarkTheme {
//     return Intl.message(
//       'Dark Theme',
//       name: 'DarkTheme',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `How to use the Ferber sleep trainer app?`
//   String get HowToUseTheFerberSleepTrainerApp {
//     return Intl.message(
//       'How to use the Ferber sleep trainer app?',
//       name: 'HowToUseTheFerberSleepTrainerApp',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Read this FAQ section (especially the "before you start" section)`
//   String get ReadThisFAQSection {
//     return Intl.message(
//       'Read this FAQ section (especially the "before you start" section)',
//       name: 'ReadThisFAQSection',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Review the editor section and make your selection of the timing you want for your baby`
//   String get ReviewTheEditor {
//     return Intl.message(
//       'Review the editor section and make your selection of the timing you want for your baby',
//       name: 'ReviewTheEditor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Before starting the training, make sure the baby is drowsy but not asleep`
//   String get BeforeStartingTheTraining {
//     return Intl.message(
//       'Before starting the training, make sure the baby is drowsy but not asleep',
//       name: 'BeforeStartingTheTraining',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Once the baby is placed in bed, start with the Trainer`
//   String get OnceTheBaby {
//     return Intl.message(
//       'Once the baby is placed in bed, start with the Trainer',
//       name: 'OnceTheBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Once you have placed the baby in bed and left the room, start the timer by selecting "Placed baby in bed"`
//   String get OnceYouHavePlaced {
//     return Intl.message(
//       'Once you have placed the baby in bed and left the room, start the timer by selecting "Placed baby in bed"',
//       name: 'OnceYouHavePlaced',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `If you have a baby monitor - you will be able to monitor if the baby is awake or asleep. Select the option accordingly. `
//   String get IfYouHaveABabyMonitor {
//     return Intl.message(
//       'If you have a baby monitor - you will be able to monitor if the baby is awake or asleep. Select the option accordingly. ',
//       name: 'IfYouHaveABabyMonitor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `As time progresses, and the baby is crying, the app will guide you on how long to wait before subsequent check-ins. `
//   String get AsTimeProgresses {
//     return Intl.message(
//       'As time progresses, and the baby is crying, the app will guide you on how long to wait before subsequent check-ins. ',
//       name: 'AsTimeProgresses',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `It is hard to hear your baby cry, but remember, this is only for a short while and will benefit the baby in the long run`
//   String get ItIsHardTOHear {
//     return Intl.message(
//       'It is hard to hear your baby cry, but remember, this is only for a short while and will benefit the baby in the long run',
//       name: 'ItIsHardTOHear',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `When the trainer shows - "Check on baby", go in the room, comfort the baby by talking in a soothing voice, or gently patting them. `
//   String get WhenTheTrainerShows {
//     return Intl.message(
//       'When the trainer shows - "Check on baby", go in the room, comfort the baby by talking in a soothing voice, or gently patting them. ',
//       name: 'WhenTheTrainerShows',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Don't pick up the baby or feed them. Stay a maximum of two minutes and once outside tap - "Checked on baby"`
//   String get DontPickUpTheBaby {
//     return Intl.message(
//       'Don\'t pick up the baby or feed them. Stay a maximum of two minutes and once outside tap - "Checked on baby"',
//       name: 'DontPickUpTheBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `If the baby is getting quieter when the timer ends, you may choose to give them a few more mins to see if they sleep off. `
//   String get IfTheBabyISGettingQuiter {
//     return Intl.message(
//       'If the baby is getting quieter when the timer ends, you may choose to give them a few more mins to see if they sleep off. ',
//       name: 'IfTheBabyISGettingQuiter',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `When you enter the room it is not unusual for the baby to cry louder than they have been just before you entered. Soothe them the best way you can`
//   String get WhenYouEnterTheRoom {
//     return Intl.message(
//       'When you enter the room it is not unusual for the baby to cry louder than they have been just before you entered. Soothe them the best way you can',
//       name: 'WhenYouEnterTheRoom',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `In the morning once the baby wakes up, you can tap the done sleeping to record the sleeping time in statistics. `
//   String get InTheMorningOnceTheBaby {
//     return Intl.message(
//       'In the morning once the baby wakes up, you can tap the done sleeping to record the sleeping time in statistics. ',
//       name: 'InTheMorningOnceTheBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `If not tapped, the app automatically assumes that the baby had slept for 12 hours and advances the day`
//   String get IfNotTapped {
//     return Intl.message(
//       'If not tapped, the app automatically assumes that the baby had slept for 12 hours and advances the day',
//       name: 'IfNotTapped',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `In case of an unsuccessful training session, please ensure that you use the timer for the previous day, as if the training had not happened on the previous day\n\n`
//   String get InCaseOfAnUnsuccessful {
//     return Intl.message(
//       'In case of an unsuccessful training session, please ensure that you use the timer for the previous day, as if the training had not happened on the previous day\n\n',
//       name: 'InCaseOfAnUnsuccessful',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `For your benefit, the app also has a section on Activity that records the statistics of your sleep training sessions. You will notice that as time passes your baby’s `
//   String get ForYourBenefits {
//     return Intl.message(
//       'For your benefit, the app also has a section on Activity that records the statistics of your sleep training sessions. You will notice that as time passes your baby’s ',
//       name: 'ForYourBenefits',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `crying time will reduce as the baby starts learning to self soothe. Time to sleep will also reduce significantly. Once you find that the time to sleep has reduced to `
//   String get CryingTimeWillReduce {
//     return Intl.message(
//       'crying time will reduce as the baby starts learning to self soothe. Time to sleep will also reduce significantly. Once you find that the time to sleep has reduced to ',
//       name: 'CryingTimeWillReduce',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `less than 5 mins, you can say that ferberization is complete. You may continue to use the app to record the statistics.`
//   String get LessThan5Mins {
//     return Intl.message(
//       'less than 5 mins, you can say that ferberization is complete. You may continue to use the app to record the statistics.',
//       name: 'LessThan5Mins',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `What is the Ferber Method and its benefits?`
//   String get WhatIsTheFerberMethod {
//     return Intl.message(
//       'What is the Ferber Method and its benefits?',
//       name: 'WhatIsTheFerberMethod',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `The Ferber method also known as "graduated extinction" was developed by pediatric sleep expert Dr. Richard Ferber.It teaches babies to self-soothe, so they can fall asleep on their own and fall back to sleep when they wake up during the night.`
//   String get SecondNdFaq {
//     return Intl.message(
//       'The Ferber method also known as "graduated extinction" was developed by pediatric sleep expert Dr. Richard Ferber.It teaches babies to self-soothe, so they can fall asleep on their own and fall back to sleep when they wake up during the night.',
//       name: 'SecondNdFaq',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Though emotionally challenging for parents, the process is very simple and brings with it a host of benefits for both the babies and parents.Once the baby has identified how to self-soothe and put themselves back to sleep - they sleep for longer, deeper, and are more rested when they wake up in the morning.For parents, they do not have to wake up multiple times in the middle of the night to rock or sing the baby back to sleep - 'self-soothing' teaches them how to go back to sleep on their own if they wake up in the middle of sleep.The Ferber method may be very hard for some parents, and strong resolve is needed to gain the benefits.Trust in yourself and trust in your instincts will go a long way. If you are successful with the method, both you and your baby will sleep better.`
//   String get SecondFurther {
//     return Intl.message(
//       'Though emotionally challenging for parents, the process is very simple and brings with it a host of benefits for both the babies and parents.Once the baby has identified how to self-soothe and put themselves back to sleep - they sleep for longer, deeper, and are more rested when they wake up in the morning.For parents, they do not have to wake up multiple times in the middle of the night to rock or sing the baby back to sleep - \'self-soothing\' teaches them how to go back to sleep on their own if they wake up in the middle of sleep.The Ferber method may be very hard for some parents, and strong resolve is needed to gain the benefits.Trust in yourself and trust in your instincts will go a long way. If you are successful with the method, both you and your baby will sleep better.',
//       name: 'SecondFurther',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `What are check-ins?`
//   String get ThirdFadLabel {
//     return Intl.message(
//       'What are check-ins?',
//       name: 'ThirdFadLabel',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `The process:`
//   String get TheProcess {
//     return Intl.message(
//       'The process:',
//       name: 'TheProcess',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Start with the bedtime routine (see “before you start” section)`
//   String get Point1 {
//     return Intl.message(
//       'Start with the bedtime routine (see “before you start” section)',
//       name: 'Point1',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Once you feel the baby is drowsy but awake put the baby in bed (look for signs of yawning, rubbing eyes, drowsy eyes)`
//   String get Point2 {
//     return Intl.message(
//       'Once you feel the baby is drowsy but awake put the baby in bed (look for signs of yawning, rubbing eyes, drowsy eyes)',
//       name: 'Point2',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `You may read the story at this point, if not already done so`
//   String get Point3 {
//     return Intl.message(
//       'You may read the story at this point, if not already done so',
//       name: 'Point3',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Tell your baby goodnight. Tell them you love them and will see them in the morning and leave the room`
//   String get Point4 {
//     return Intl.message(
//       'Tell your baby goodnight. Tell them you love them and will see them in the morning and leave the room',
//       name: 'Point4',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `If the baby cries, wait for the designated amount of time before you go back into the room`
//   String get Point5 {
//     return Intl.message(
//       'If the baby cries, wait for the designated amount of time before you go back into the room',
//       name: 'Point5',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Comfort the baby by talking in a soothing voice, or gently patting them. Don't pick up the baby or feed them`
//   String get Point6 {
//     return Intl.message(
//       'Comfort the baby by talking in a soothing voice, or gently patting them. Don\'t pick up the baby or feed them',
//       name: 'Point6',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Leave the room after a minute or so, or if the baby stops crying. Repeat as needed, ensuring that you have waited for the designated time`
//   String get Point7 {
//     return Intl.message(
//       'Leave the room after a minute or so, or if the baby stops crying. Repeat as needed, ensuring that you have waited for the designated time',
//       name: 'Point7',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `During the check-ins, you’ll go to your baby at timed intervals that gradually get longer until they fall asleep.The check-ins also get longer on subsequent nights. Dr. Ferber calls it the "progressive waiting approach."`
//   String get ThirdFurther {
//     return Intl.message(
//       'During the check-ins, you’ll go to your baby at timed intervals that gradually get longer until they fall asleep.The check-ins also get longer on subsequent nights. Dr. Ferber calls it the "progressive waiting approach."',
//       name: 'ThirdFurther',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Who is the Ferber method right for?`
//   String get FourthLabel {
//     return Intl.message(
//       'Who is the Ferber method right for?',
//       name: 'FourthLabel',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Babies are generally ready for sleep training, around 5 or 6 months. At that point, they’re developmentally capable of self-soothing.They’re also old enough to sleep through the night without eating. You don’t have to sleep train as soon as your baby hits the 5- or 6-month mark.If you feel more comfortable holding off until your little one is a bit older, that’s okay. Just keep in mind that the older your baby gets,the harder it might be for them to learn to fall asleep on their own.'`
//   String get FourthMain {
//     return Intl.message(
//       'Babies are generally ready for sleep training, around 5 or 6 months. At that point, they’re developmentally capable of self-soothing.They’re also old enough to sleep through the night without eating. You don’t have to sleep train as soon as your baby hits the 5- or 6-month mark.If you feel more comfortable holding off until your little one is a bit older, that’s okay. Just keep in mind that the older your baby gets,the harder it might be for them to learn to fall asleep on their own.\'',
//       name: 'FourthMain',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Please make sure you have consulted with your baby's doctor before starting the Ferber method. This method should not be used with any babies with underlying health conditions or any types of sleep or other disorders. Always remember that you are the best judge of your baby's well-being.The Ferber method, the app, and the proposed times are only guides and you are in the driving seat.  Always pay attention to the baby's cries,if something does not feel right, act on your intuition, and the process can be continued later.`
//   String get FourthFurther {
//     return Intl.message(
//       'Please make sure you have consulted with your baby\'s doctor before starting the Ferber method. This method should not be used with any babies with underlying health conditions or any types of sleep or other disorders. Always remember that you are the best judge of your baby\'s well-being.The Ferber method, the app, and the proposed times are only guides and you are in the driving seat.  Always pay attention to the baby\'s cries,if something does not feel right, act on your intuition, and the process can be continued later.',
//       name: 'FourthFurther',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `What is self-soothing?'`
//   String get FifthLabel {
//     return Intl.message(
//       'What is self-soothing?\'',
//       name: 'FifthLabel',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Soothing is defined as babies getting a feeling of happiness and calm. This can be attained with a mother's touch, a father's voice, music from a toy,rocking, rubbing, or walking with baby in hand. Self-soothing is letting the baby identify ways where he/she could get the same feeling but on his / her own.This could be playing with their own fingers, scratching the bedsheet, muffling a blanket, or hugging a toy (remember Joey's hugsy?).`
//   String get FifthMain {
//     return Intl.message(
//       'Soothing is defined as babies getting a feeling of happiness and calm. This can be attained with a mother\'s touch, a father\'s voice, music from a toy,rocking, rubbing, or walking with baby in hand. Self-soothing is letting the baby identify ways where he/she could get the same feeling but on his / her own.This could be playing with their own fingers, scratching the bedsheet, muffling a blanket, or hugging a toy (remember Joey\'s hugsy?).',
//       name: 'FifthMain',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Self-soothing is crucial not just to get to sleep, but also to stay asleep. We all sleep in cycles of 90 mins. Even as adults we wake up after each 90-minute cycle;either turning over or taking a deep sigh and eventually going back to sleep. However, babies are creatures of habit and haven’t learned to go back to sleep like this yet. Instead, if they are in the habit of being rocked to sleep; they want to be rocked back to sleep every 90-minutes.Hence,when managing to sleep on their own by self-soothing they can put themselves back to sleep again.`
//   String get FifthFurther {
//     return Intl.message(
//       'Self-soothing is crucial not just to get to sleep, but also to stay asleep. We all sleep in cycles of 90 mins. Even as adults we wake up after each 90-minute cycle;either turning over or taking a deep sigh and eventually going back to sleep. However, babies are creatures of habit and haven’t learned to go back to sleep like this yet. Instead, if they are in the habit of being rocked to sleep; they want to be rocked back to sleep every 90-minutes.Hence,when managing to sleep on their own by self-soothing they can put themselves back to sleep again.',
//       name: 'FifthFurther',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Things to keep in mind before you start`
//   String get SixthLabel {
//     return Intl.message(
//       'Things to keep in mind before you start',
//       name: 'SixthLabel',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Humans are creatures of habit. More so babies. Initiate a bedtime routine a few days before starting the Ferber method, so that the baby recognizes the cues to sleep.Whilst there’s no set rule, try to identify what works for your family. Some go for a bath time routine, while others go out for walks; however, reading a storybook remains the gold-standard (same one every night!) Self-soothing is the key to the Ferber method. Keep an assortment of props for the baby to choose from. For example, a soft blanket, a bedsheet, a toy that is travel-friendly.The most favored is a blanket, easy to carry and for night outs with family.`
//   String get SixthMain {
//     return Intl.message(
//       'Humans are creatures of habit. More so babies. Initiate a bedtime routine a few days before starting the Ferber method, so that the baby recognizes the cues to sleep.Whilst there’s no set rule, try to identify what works for your family. Some go for a bath time routine, while others go out for walks; however, reading a storybook remains the gold-standard (same one every night!) Self-soothing is the key to the Ferber method. Keep an assortment of props for the baby to choose from. For example, a soft blanket, a bedsheet, a toy that is travel-friendly.The most favored is a blanket, easy to carry and for night outs with family.',
//       name: 'SixthMain',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Post the bedtime routine, make sure you start the training only when the baby is drowsy but awake. Make sure the baby is in a safe environment, and you can hear the baby crying from outside the room. If you have a baby monitor, make sure you are able to see the baby. But a baby monitor is not essential for the sleep training.Every baby is different and special in his/her own way. A majority take 3-7 days to learn to self-soothe while others take longer. The crying and time taken to sleep will reduce noticeably faster as the days pass. One thankful parent told us that their baby cried for a total of 16 mins on the first day, followed by 8 mins the next day, 6 mins the next day, and was asleep in 3 mins on the fourth day.`
//   String get SixthFurther {
//     return Intl.message(
//       'Post the bedtime routine, make sure you start the training only when the baby is drowsy but awake. Make sure the baby is in a safe environment, and you can hear the baby crying from outside the room. If you have a baby monitor, make sure you are able to see the baby. But a baby monitor is not essential for the sleep training.Every baby is different and special in his/her own way. A majority take 3-7 days to learn to self-soothe while others take longer. The crying and time taken to sleep will reduce noticeably faster as the days pass. One thankful parent told us that their baby cried for a total of 16 mins on the first day, followed by 8 mins the next day, 6 mins the next day, and was asleep in 3 mins on the fourth day.',
//       name: 'SixthFurther',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Privacy Policy`
//   String get PrivacyPolicy {
//     return Intl.message(
//       'Privacy Policy',
//       name: 'PrivacyPolicy',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Visit the link for more detailed privacy policy`
//   String get VisitTheLinkFor {
//     return Intl.message(
//       'Visit the link for more detailed privacy policy',
//       name: 'VisitTheLinkFor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Or`
//   String get Or {
//     return Intl.message(
//       'Or',
//       name: 'Or',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Contact us on`
//   String get ContactUs {
//     return Intl.message(
//       'Contact us on',
//       name: 'ContactUs',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `for any concerns.`
//   String get Concerns {
//     return Intl.message(
//       'for any concerns.',
//       name: 'Concerns',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Support`
//   String get Support {
//     return Intl.message(
//       'Support',
//       name: 'Support',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `For questions related to your baby's health, please consult with your doctor. For questions about how to use the app, feel free to email at ferber.sleep.trainer@gmail.com.We strive to respond in 48-72 hours of your query.We also welcome feedback on the usability of the app. And we love to hear of your experience.It keeps our team motivated about how many babies and parents we have helped over the years to sleep better`
//   String get EightMain {
//     return Intl.message(
//       'For questions related to your baby\'s health, please consult with your doctor. For questions about how to use the app, feel free to email at ferber.sleep.trainer@gmail.com.We strive to respond in 48-72 hours of your query.We also welcome feedback on the usability of the app. And we love to hear of your experience.It keeps our team motivated about how many babies and parents we have helped over the years to sleep better',
//       name: 'EightMain',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Trainer`
//   String get Trainer {
//     return Intl.message(
//       'Trainer',
//       name: 'Trainer',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Activity`
//   String get Activity {
//     return Intl.message(
//       'Activity',
//       name: 'Activity',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Editor`
//   String get Editor {
//     return Intl.message(
//       'Editor',
//       name: 'Editor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Help & FAQ`
//   String get help {
//     return Intl.message(
//       'Help & FAQ',
//       name: 'help',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `sleeping`
//   String get sleeping {
//     return Intl.message(
//       'sleeping',
//       name: 'sleeping',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `crying`
//   String get crying {
//     return Intl.message(
//       'crying',
//       name: 'crying',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `awake`
//   String get awake {
//     return Intl.message(
//       'awake',
//       name: 'awake',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `You can do it! It is hard, but your baby is learning how to self-soothe.`
//   String get map1 {
//     return Intl.message(
//       'You can do it! It is hard, but your baby is learning how to self-soothe.',
//       name: 'map1',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `It's very difficult to hear the cries, but soon your baby will be sleeping better throughout the night.`
//   String get map2 {
//     return Intl.message(
//       'It\'s very difficult to hear the cries, but soon your baby will be sleeping better throughout the night.',
//       name: 'map2',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `This will be good for both you and your baby. Hang in there.`
//   String get map3 {
//     return Intl.message(
//       'This will be good for both you and your baby. Hang in there.',
//       name: 'map3',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `You are doing so well. It's just a few more nights.`
//   String get map4 {
//     return Intl.message(
//       'You are doing so well. It\'s just a few more nights.',
//       name: 'map4',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `GOT IT`
//   String get gotIt {
//     return Intl.message(
//       'GOT IT',
//       name: 'gotIt',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `check`
//   String get check {
//     return Intl.message(
//       'check',
//       name: 'check',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `following`
//   String get following {
//     return Intl.message(
//       'following',
//       name: 'following',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `TAP TO CHANGE`
//   String get TapToChange {
//     return Intl.message(
//       'TAP TO CHANGE',
//       name: 'TapToChange',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Cant edit while session is active`
//   String get CantEditWhile {
//     return Intl.message(
//       'Cant edit while session is active',
//       name: 'CantEditWhile',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Regular Ferber Method`
//   String get RegularFerberMethod {
//     return Intl.message(
//       'Regular Ferber Method',
//       name: 'RegularFerberMethod',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Standard times recommended as a guide by Dr. Richard Ferber`
//   String get RegularDis {
//     return Intl.message(
//       'Standard times recommended as a guide by Dr. Richard Ferber',
//       name: 'RegularDis',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Mild Ferber Method`
//   String get MildFerberMethod {
//     return Intl.message(
//       'Mild Ferber Method',
//       name: 'MildFerberMethod',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Reduced check in times allowing to check on baby sooner for lesser crying `
//   String get MildDis {
//     return Intl.message(
//       'Reduced check in times allowing to check on baby sooner for lesser crying ',
//       name: 'MildDis',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Custom Method`
//   String get CustomMethod {
//     return Intl.message(
//       'Custom Method',
//       name: 'CustomMethod',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Define your own check in times, to suit your needs. Once selected, you can tap on any time in the table and edit it`
//   String get CustomDis {
//     return Intl.message(
//       'Define your own check in times, to suit your needs. Once selected, you can tap on any time in the table and edit it',
//       name: 'CustomDis',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `after`
//   String get after {
//     return Intl.message(
//       'after',
//       name: 'after',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Baby Asleep`
//   String get BabyAsleep {
//     return Intl.message(
//       'Baby Asleep',
//       name: 'BabyAsleep',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Baby Awake`
//   String get BabyAwake {
//     return Intl.message(
//       'Baby Awake',
//       name: 'BabyAwake',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `End Training`
//   String get EndTraining {
//     return Intl.message(
//       'End Training',
//       name: 'EndTraining',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Baby Crying`
//   String get BabyCrying {
//     return Intl.message(
//       'Baby Crying',
//       name: 'BabyCrying',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Checked on baby`
//   String get CheckedOnBaby {
//     return Intl.message(
//       'Checked on baby',
//       name: 'CheckedOnBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Unsuccessful`
//   String get Unsuccessful {
//     return Intl.message(
//       'Unsuccessful',
//       name: 'Unsuccessful',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Add a note (optional)`
//   String get AddANote {
//     return Intl.message(
//       'Add a note (optional)',
//       name: 'AddANote',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Back`
//   String get Back {
//     return Intl.message(
//       'Back',
//       name: 'Back',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Submit`
//   String get Submit {
//     return Intl.message(
//       'Submit',
//       name: 'Submit',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Done Sleeping`
//   String get DoneSleeping {
//     return Intl.message(
//       'Done Sleeping',
//       name: 'DoneSleeping',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Cancel`
//   String get Cancel {
//     return Intl.message(
//       'Cancel',
//       name: 'Cancel',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Check on your baby!`
//   String get CheckBaby {
//     return Intl.message(
//       'Check on your baby!',
//       name: 'CheckBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `wait for`
//   String get waitFor {
//     return Intl.message(
//       'wait for',
//       name: 'waitFor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `awake time`
//   String get AwakeTime {
//     return Intl.message(
//       'awake time',
//       name: 'AwakeTime',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `sleep time`
//   String get SleepTime {
//     return Intl.message(
//       'sleep time',
//       name: 'SleepTime',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Baby is`
//   String get BabyIs {
//     return Intl.message(
//       'Baby is',
//       name: 'BabyIs',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Session`
//   String get Session {
//     return Intl.message(
//       'Session',
//       name: 'Session',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Ferber Sleep Trainer`
//   String get FerberSleepTrainer {
//     return Intl.message(
//       'Ferber Sleep Trainer',
//       name: 'FerberSleepTrainer',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Help your baby learn to sleep better! `
//   String get HelpBaby {
//     return Intl.message(
//       'Help your baby learn to sleep better! ',
//       name: 'HelpBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Once you're ready to start the training, tap the button below.`
//   String get OnceYoureReady {
//     return Intl.message(
//       'Once you\'re ready to start the training, tap the button below.',
//       name: 'OnceYoureReady',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Placed Baby in Bed`
//   String get PlacedBaby {
//     return Intl.message(
//       'Placed Baby in Bed',
//       name: 'PlacedBaby',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `OK`
//   String get OK {
//     return Intl.message(
//       'OK',
//       name: 'OK',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `Editor`
//   String get editor {
//     return Intl.message(
//       'Editor',
//       name: 'editor',
//       desc: '',
//       args: [],
//     );
//   }

//   /// `End Session`
//   String get EndSession {
//     return Intl.message(
//       'End Session',
//       name: 'EndSession',
//       desc: '',
//       args: [],
//     );
//   }
// }

// class AppLocalizationDelegate extends LocalizationsDelegate<S> {
//   const AppLocalizationDelegate();

//   List<Locale> get supportedLocales {
//     return const <Locale>[
//       Locale.fromSubtags(languageCode: 'en'),
//       Locale.fromSubtags(languageCode: 'de'),
//       Locale.fromSubtags(languageCode: 'es'),
//       Locale.fromSubtags(languageCode: 'fr'),
//       Locale.fromSubtags(languageCode: 'ko'),
//       Locale.fromSubtags(languageCode: 'pt'),
//     ];
//   }

//   @override
//   bool isSupported(Locale locale) => _isSupported(locale);
//   @override
//   Future<S> load(Locale locale) => S.load(locale);
//   @override
//   bool shouldReload(AppLocalizationDelegate old) => false;

//   bool _isSupported(Locale locale) {
//     if (locale != null) {
//       for (var supportedLocale in supportedLocales) {
//         if (supportedLocale.languageCode == locale.languageCode) {
//           return true;
//         }
//       }
//     }
//     return false;
//   }
// }