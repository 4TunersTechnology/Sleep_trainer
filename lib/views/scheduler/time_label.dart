import 'package:baby_sleep_scheduler/generated/l10n.dart';
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
            '1st'+ " " +S.of(context).check +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? S.of(context).after
                    : ''),
          ),
          LabelDisplay(
            '2nd '+ " " +S.of(context).check +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? S.of(context).after
                    : ''),
          ),
          LabelDisplay(
            '3rd check' +
            " " +S.of(context).check +
                (MediaQuery.of(context).orientation == Orientation.portrait
                    ? S.of(context).after
                    : ''),
          ),
          LabelDisplay(
            S.of(context).following+" " +(MediaQuery.of(context).orientation == Orientation.portrait
                    ? S.of(context).after
                    : ''),
          ),
        ],
      ),
    );
  }
}
