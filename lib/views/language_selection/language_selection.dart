import 'package:baby_sleep_scheduler/views/main/main_view.dart';
import 'package:flutter/material.dart';
import 'package:baby_sleep_scheduler/provider/app_locale.dart';
import 'package:provider/provider.dart';
import '../../generated/l10n.dart';

class LanguageBasedOnUserSelection extends StatefulWidget {
  final bool onboarded;

  const LanguageBasedOnUserSelection({this.onboarded});
  @override
  _LanguageBasedOnUserSelectionState createState() => _LanguageBasedOnUserSelectionState();
}

class _LanguageBasedOnUserSelectionState extends State<LanguageBasedOnUserSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select the language"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'en'),
              child: Text('English'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'fr'),
              child: Text('French'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'de'),
              child: Text('German'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'ko'),
              child: Text('Korean'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'pt'),
              child: Text('Portuguese'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Theme.of(context).backgroundColor,// Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () => _setLanguage(context, 'es'),
              child: Text('spanish'),
            ),
          ],
        ),
      ),
    );
  }

  _setLanguage(BuildContext context, String languageCode) {
    Provider.of<AppLocale>(context, listen: false).changeLocale(languageCode);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainView(widget.onboarded)),
    );
  }
}
