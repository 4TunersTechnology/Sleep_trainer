import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';

class SelectionButton extends StatelessWidget {
  final String label;
  final Function onTap;

  SelectionButton({@required this.label, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 48,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}

class DynamicDialog extends StatefulWidget {
  final Function endSession;
  final bool unsuccessful;

  DynamicDialog({
    @required this.endSession,
    this.unsuccessful,
  });

  @override
  State<StatefulWidget> createState() {
    return _DynamicDialogState();
  }
}

class _DynamicDialogState extends State<DynamicDialog> {
  bool _unsuccessful = false;
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _unsuccessful = widget.unsuccessful ?? false;
  }

  void _submit() {
    Navigator.pop(context, true);
    widget.endSession(
      null,
      "Unsuccessful".tr(),
      _textController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Assuming 'en' is the default locale

    if (_unsuccessful) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                minLines: 2,
                maxLines: 2,
                autofocus: true,
                controller: _textController,
                decoration: InputDecoration(
                  hintText: "AddANote".tr(),
                  border: OutlineInputBorder(),
                ),
                onSubmitted: (_) => _submit,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    "Back".tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (widget.unsuccessful == null)
                      setState(() => _unsuccessful = false);
                    else
                      Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 12),
                TextButton(
                  child: Text(
                    "Submit".tr(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => _submit(),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectionButton(
            label: "DoneSleeping".tr(), // Change here
            onTap: () async {
              Navigator.pop(context, true);
              await widget.endSession();
            },
          ),
          Divider(),
          SelectionButton(
            label: "Unsuccessful".tr(),
            onTap: () => setState(() => _unsuccessful = true),
          ),
          Divider(),
          SelectionButton(
            label: "Cancel".tr(),
            onTap: () => Navigator.pop(context),
          ),
        ],
      );
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

// class DynamicDialog extends StatefulWidget {
//   final Function endSession;
//   final bool unsuccessful;
//
//   DynamicDialog({
//     @required this.endSession,
//     this.unsuccessful,
//   });
//
//   @override
//   State<StatefulWidget> createState() {
//     return _DynamicDialogState();
//   }
// }
//
// class _DynamicDialogState extends State<DynamicDialog> {
//   bool _unsuccessful = false;
//
//   final TextEditingController _textController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     S.load(Locale('en'));
//     _unsuccessful = widget.unsuccessful ?? false;
//   }
//
//   void _submit() {
//     Navigator.pop(context, true);
//     widget.endSession(
//       null,
//       "Unsuccessful".tr(),
//       _textController.text,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//   // Assuming 'en' is the default locale
//
//     if (_unsuccessful) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Material(
//             child: SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: TextField(
//                 minLines: 2,
//                 maxLines: 2,
//                 autofocus: true,
//                 controller: _textController,
//                 decoration: InputDecoration(
//                   hintText: "AddANote".tr(),
//                   border: OutlineInputBorder(),
//                 ),
//                 onSubmitted: (_) => _submit,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 8),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 TextButton(
//                   // color: Theme.of(context).primaryColor,
//                   child: Text(
//                     "Back".tr(),
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onPressed: () {
//                     FocusScope.of(context).unfocus();
//                     if (widget.unsuccessful == null)
//                       setState(() => _unsuccessful = false);
//                     else
//                       Navigator.pop(context);
//                   },
//                 ),
//                 const SizedBox(width: 12),
//                 TextButton(
//                   //color: Theme.of(context).primaryColor,
//                   child: Text(
//                     "Submit".tr(),
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   onPressed: () => _submit(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     } else
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SelectionButton(
//             // label: "DoneSleeping".tr(),
//             label:"Done Sleeping",
//             onTap: () async {
//               Navigator.pop(context, true);
//               await widget.endSession();
//             },
//           ),
//           Divider(),
//           SelectionButton(
//             // label: "Unsuccessful",
//             label: "Unsuccessful".tr(),
//             onTap: () => setState(() => _unsuccessful = true),
//           ),
//           Divider(),
//           SelectionButton(
//             label: "Cancel".tr(),
//             onTap: () => Navigator.pop(context),
//           ),
//         ],
//       );
//   }
//
//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }
// }

class EndSessionDialog extends StatelessWidget {
  final Function endSession;
  final bool unsuccessful;

  EndSessionDialog({
    @required this.endSession,
    this.unsuccessful,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).scaffoldBackgroundColor,
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: DynamicDialog(
                endSession: endSession,
                unsuccessful: unsuccessful,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
