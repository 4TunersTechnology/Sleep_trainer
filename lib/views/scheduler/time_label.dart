import 'package:baby_sleep_scheduler/generated/l10n.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class LabelDisplay extends StatelessWidget {
  final String label;

  LabelDisplay(this.label);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class TimeLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(flex: 5, child: SizedBox()),
          LabelDisplay(
            '1st' +
                " " +
                "check".tr() +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? "after".tr()
                    : ''),
          ),
          LabelDisplay(
            '2nd ' +
                " " +
                "check".tr() +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? "after".tr()
                    : ''),
          ),
          LabelDisplay(
            '3rd check' +
                " " +
                "check".tr() +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? "after".tr()
                    : ''),
          ),
          LabelDisplay(
            "following".tr() +
                " " +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? "after".tr()
                    : ''),
          ),
        ],
      ),
    );
  }
}
