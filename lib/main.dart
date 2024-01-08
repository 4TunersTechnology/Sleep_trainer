//
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'generated/l10n.dart';
// import 'logic/cache/db.dart';
// import 'logic/cache/prefs.dart';
// import 'logic/notifications/notifications.dart';
// import 'theme/theme.dart';
// import 'package:wakelock/wakelock.dart';
// import 'package:flutter/material.dart';
// import 'global/values.dart' as values;
// import 'views/main/main_view.dart';
//
// void main() async {
//   // Required by framework
//   WidgetsFlutterBinding.ensureInitialized();
//
//   // Initialise notification plugin
//   await Notifications.init();
//
//   // Initialise SQLite database used for log storage
//   await DB.init();
//
//   // Initialise session / cache storage
//   await Prefs.init();
//
//   // Get custom session times
//   await values.initSessionTimes();
//
//   /*if (io.Platform.isAndroid) {
//     // Initialise background services
//     await BackgroundServices.init();
//   }*/
//
//   // Set custom theme data
//   CustomTheme.init();
//
//   // Apparently shared prefs don't work so this is a fallback
//   final List userInfo = await DB.db.rawQuery('SELECT * FROM UserInfo');
//   final bool onboarded = userInfo.isNotEmpty;
//
//   runApp(SleepTrainer(onboarded));
//
//   // Keep screen turned on while the user is in the app
//   Wakelock.enable();
// }
//
// class SleepTrainer extends StatelessWidget {
//   final bool onboarded;
//
//   SleepTrainer(this.onboarded);
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder(
//       stream: CustomTheme.stream,
//       builder: (context, nightTheme) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: CustomTheme.themeData,
//         localizationsDelegates: [
//           S.delegate,
//           GlobalWidgetsLocalizations.delegate,
//           GlobalCupertinoLocalizations.delegate,
//         ],
//         supportedLocales: [
//           const Locale('en', 'US'), // English
//           const Locale('de', 'DE'), // German
//           const Locale('fr', 'FR'), // French
//           const Locale('ko', 'KR'), // Korean
//         ],
//         home: MainView(onboarded),
//       ),
//     );
//   }
// }
//
//
//







import 'package:baby_sleep_scheduler/provider/app_locale.dart';
import 'package:baby_sleep_scheduler/views/language_selection/language_selection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:wakelock/wakelock.dart';

import 'generated/l10n.dart';
import 'logic/cache/db.dart';
import 'logic/cache/prefs.dart';
import 'logic/notifications/notifications.dart';
import 'theme/theme.dart';
import 'global/values.dart' as values;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await S.load(Locale('en'));
  await Notifications.init();
  await DB.init();
  await Prefs.init();
  await values.initSessionTimes();

  CustomTheme.init();

  final List userInfo = await DB.db.rawQuery('SELECT * FROM UserInfo');
  final bool onboarded = userInfo.isNotEmpty;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppLocale()),
        // Add other providers as needed
      ],
      child: MyApp(onboarded),
    ),
  );

  Wakelock.enable();
}

class SleepTrainer extends StatelessWidget {
  final bool onboarded;

  SleepTrainer(this.onboarded);

  @override
  Widget build(BuildContext context) {
    return Consumer<AppLocale>(
      builder: (context, appLocale, child) {
        List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
          S.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ];

        // Add MaterialLocalizations.delegate for the 'fr' locale
        if (appLocale.locale.languageCode == 'fr' ||
            appLocale.locale.languageCode == 'de') {
          localizationsDelegates.add(GlobalMaterialLocalizations.delegate);
        }

        return StreamBuilder(
          stream: CustomTheme.stream,
          builder: (context, nightTheme) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.themeData,
            locale: appLocale.locale,
            localizationsDelegates: localizationsDelegates,
              // localizationsDelegates: [
              // S.delegate,
              // // other delegates
              // GlobalMaterialLocalizations.delegate,
              // GlobalWidgetsLocalizations.delegate,
              // ],
            supportedLocales: S.delegate.supportedLocales,
            home: LanguageBasedOnUserSelection(),
          ),
        );
      },
    );
  }
}


class MyApp extends StatelessWidget {
  final bool onboarded;

  MyApp(this.onboarded);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SleepTrainer(onboarded),
    );
  }
}
