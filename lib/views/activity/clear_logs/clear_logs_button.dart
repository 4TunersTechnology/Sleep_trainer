import 'package:baby_sleep_scheduler/global/values.dart';
import 'package:baby_sleep_scheduler/theme/theme.dart';
import 'package:baby_sleep_scheduler/views/activity/clear_logs/clear_logs_dialog.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ClearLogsButtonStyles {
  final BuildContext context;

  ClearLogsButtonStyles(this.context);

  BoxDecoration get buttonDecoration => BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    color: Theme.of(context).backgroundColor,
    border: Border.all(color: Colors.grey.shade200),
  );

  TextStyle get buttonTextStyle => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
}

class ClearLogsButton extends StatelessWidget {
  final Function refresh;
  final ClearLogsButtonStyles buttonStyles;

  ClearLogsButton({@required this.refresh, @required this.buttonStyles});

  Future<bool> showClearLogsDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      barrierColor: CustomTheme.nightTheme
          ? Colors.black87
          : Colors.white.withOpacity(0.87),
      builder: (context) => ClearLogsDialog(),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GestureDetector(
        onTap: Values.sessionActive
            ? () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          elevation: 0,
          margin: const EdgeInsets.all(8),
          behavior: SnackBarBehavior.floating,
          content: Text(
            S.of(context).CantClearLogs,
          ),
        ))
            : () async {
          final bool shouldDelete = await showClearLogsDialog(context);
          if (shouldDelete) refresh();
        },
        child: DecoratedBox(
          decoration: buttonStyles.buttonDecoration,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    S.of(context).ClearTrainingActivity,
                    style: buttonStyles.buttonTextStyle,
                  ),
                  const Icon(Icons.delete_forever),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
