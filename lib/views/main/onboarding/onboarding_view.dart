import 'package:baby_sleep_scheduler/other/overscroll_removed.dart';
import 'package:baby_sleep_scheduler/views/main/onboarding/bloc/color_controller.dart';
import 'package:baby_sleep_scheduler/views/main/onboarding/bloc/indicator_controller.dart';
import 'package:baby_sleep_scheduler/views/main/onboarding/navigation/page_navigation.dart';
import 'package:baby_sleep_scheduler/views/main/onboarding/onboarding_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class OnboardingView extends StatefulWidget {
  final Function finish;

  OnboardingView({@required this.finish});

  @override
  State<StatefulWidget> createState() {
    return _OnboardingViewState();
  }
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController();

  int _pageIndex = 0;

  bool _lastPage = false;

  final GlobalKey<PageNavigationState> _pageNavigationKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    IndicatorController.init();
    ColorController.init();
    _pageController.addListener(
      () {
        if (_pageController.page.round() != _pageIndex) {
          _pageIndex = _pageController.page.round();
          IndicatorController.change(_pageIndex);
          if (_pageIndex == 3 && !_lastPage) {
            _lastPage = true;
            _pageNavigationKey.currentState.lastStep();
          }
          if (_pageIndex != 3 && _lastPage) {
            _lastPage = false;
            _pageNavigationKey.currentState.goBack();
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: OverscrollRemovedBehavior(),
          child: PageView(
            controller: _pageController,
            children: [
              OnboardingPage(
                  icon: Icons.nights_stay,
                  text:
                      "TrainerTrainingTimerWhichGuidesYouThroughToApplyingTheFerberMethodForYourChild"
                          .tr()),
              OnboardingPage(
                  icon: Icons.leaderboard,
                  text: "OnbordingActivity".tr() +
                      " " +
                      "OnbordingActivity2".tr()),
              OnboardingPage(
                icon: Icons.query_builder,
                text: "OnbordingEditor".tr(),
              ),
              OnboardingPage(
                icon: Icons.help_center,
                text: "OnbordingHelp".tr(),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 6,
          left: 0,
          right: 0,
          child: StreamBuilder(
            stream: ColorController.stream,
            initialData: Theme.of(context).primaryColor,
            builder: (context, color) => PageNavigation(
              _pageNavigationKey,
              pageController: _pageController,
              onboardingFinished: widget.finish,
              page: _pageIndex,
              color: color.data,
            ),
          ),
        ),
        Positioned(
          right: 16,
          top: 16 + MediaQuery.of(context).padding.top,
          child: StreamBuilder(
            stream: ColorController.stream,
            initialData: Theme.of(context).primaryColor,
            builder: (context, color) => TextButton(
              child: Text(
                "skip".tr(),
                style: TextStyle(
                  fontSize: 16,
                  color: color.data,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () => widget.finish(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    IndicatorController.dispose();
    ColorController.dispose();
    super.dispose();
  }
}
