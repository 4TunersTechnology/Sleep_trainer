import 'package:baby_sleep_scheduler/global/values.dart';
import 'package:baby_sleep_scheduler/logic/cache/db.dart';
import 'package:baby_sleep_scheduler/logic/cache/prefs.dart';
import 'package:baby_sleep_scheduler/views/trainer/trainer_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ClearLogsDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClearLogsDialogState();
  }
}

class _ClearLogsDialogState extends State<ClearLogsDialog> {
  bool _deleting = false;

  Future<void> _deleteLogs() async {
    setState(() => _deleting = true);

    for (var key in Prefs.instance.getKeys()) {
      if (key != Cached.sessionType.label) {
        await Prefs.instance.remove(key);
      }
    }

    await DB.db.rawDelete('DELETE FROM Logs WHERE type IS NOT NULL');

    Navigator.pop(context, true);
    TrainerView.state.refresh();
  }

  Widget _buildDialogContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            "DeleteAllRecordedActivityThis".tr(),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildDialogButton(
              text: "Yes".tr(),
              onPressed: _deleteLogs,
            ),
            const SizedBox(width: 12),
            _buildDialogButton(
              text: "No".tr(),
              onPressed: () => Navigator.pop(context, false),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDialogButton({String text, VoidCallback onPressed}) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        primary: Colors.white,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _deleting
          ? CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AlertDialog(
                content: _buildDialogContent(),
              ),
            ),
    );
  }
}
