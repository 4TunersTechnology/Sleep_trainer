import 'package:baby_sleep_scheduler/global/values.dart';
import 'package:baby_sleep_scheduler/logic/cache/db.dart';
import 'package:baby_sleep_scheduler/logic/cache/prefs.dart';
import 'package:baby_sleep_scheduler/views/trainer/trainer_view.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class DeleteLogDialog extends StatelessWidget {
  final int id;

  DeleteLogDialog({@required this.id});

  Future<void> _deleteLog(BuildContext context) async {
    try {
      await DB.db.rawDelete('DELETE FROM Logs WHERE id = $id');

      if (!Values.sessionActive) {
        final List logs = await DB.db.rawQuery('SELECT * FROM Logs');
        if (logs.isEmpty) {
          for (var key in Prefs.instance.getKeys()) {
            await Prefs.instance.remove(key);
          }
          TrainerView.state.refresh();
        }
      }

      Navigator.pop(context, true);
    } catch (e) {
      // Handle errors, e.g., show an error message or log the error
      print('Error deleting log: $e');
    }
  }

  Widget _buildDialogContent(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(S.of(context).AreYouSureYouWantToDeleteThisEntry),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildDialogButton(
              context,
              text: S.of(context).Yes,
              onPressed: () => _deleteLog(context),
            ),
            const SizedBox(width: 12),
            _buildDialogButton(
              context,
              text: S.of(context).No,
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDialogButton(
      BuildContext context, {
        String text,
        VoidCallback onPressed,
      }) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: Theme.of(context).primaryColor,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
            child: _buildDialogContent(context),
          ),
        ),
      ),
    );
  }
}
