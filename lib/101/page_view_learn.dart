import 'package:flutter/material.dart';
import 'package:flutterdeneme/101/icon_learn.dart';
import 'package:flutterdeneme/101/image_learn.dart';
import 'package:flutterdeneme/101/stack_lear.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.easeInBack);
              },
              child: const Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationLow,
                    curve: Curves.easeOutSine);
              },
              child: const Icon(Icons.chevron_right)),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: const [
          ImageLearnView(),
          IconLearnView(),
          StackLearnView(),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
