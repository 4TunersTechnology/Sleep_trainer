import 'package:baby_sleep_scheduler/generated/l10n.dart';
import 'package:baby_sleep_scheduler/global/values.dart';
import 'package:baby_sleep_scheduler/theme/theme.dart';
import 'package:baby_sleep_scheduler/views/trainer/sleep/actions/end_session_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SleepActions extends StatelessWidget {
  final Function(States) changeSleepState;
  final Function resume;
  final Function endSession;
  final String mode;
  final bool cryTimeOver;

  SleepActions({
    @required this.changeSleepState,
    @required this.resume,
    @required this.endSession,
    @required this.mode,
    @required this.cryTimeOver,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor:
                        Theme.of(context).backgroundColor, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      if (mode == States.playing.label) {
                        await changeSleepState(States.playing);
                      } else if (cryTimeOver) {
                        await showDialog(
                          context: context,
                          barrierColor: CustomTheme.nightTheme
                              ? Colors.black87
                              : Colors.white70,
                          builder: (context) => EndSessionDialog(
                            endSession: endSession,
                          ),
                        );
                      } else {
                        await changeSleepState(States.playing);
                      }
                    } catch (e) {
                      print("Error during onPressed: $e");
                      // Handle the error as needed
                    }
                  },
                  child: Text(
                    mode == States.playing.label
                        ? "BabyAsleep".tr()
                        : cryTimeOver
                            ? "EndTraining".tr()
                            : "BabyAwake".tr(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Theme.of(context).backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      if (mode == States.crying.label) {
                        if (cryTimeOver) {
                          await changeSleepState(States.playing);
                        } else {
                          await changeSleepState(States.crying);
                        }
                      } else {
                        await changeSleepState(States.crying);
                      }
                    } catch (e) {
                      print("Error during onPressed: $e");
                      // Handle the error as needed
                    }
                  },
                  child: Text(
                    mode == States.crying.label && cryTimeOver
                        ? "CheckedOnBaby".tr()
                        : "BabyCrying".tr(),
                  ),
                ),
              ),
            ],
          ),
          if (!cryTimeOver || mode != States.crying.label)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor:
                    Theme.of(context).backgroundColor, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Colors.grey.shade200),
                ),
              ),
              onPressed: () async {
                try {
                  await endSession();
                } catch (e) {
                  print("Error during onPressed: $e");
                  // Handle the error as needed
                }
              },
              child: Text("EndSession".tr()),
            ),
        ],
      ),
    );
  }
}
