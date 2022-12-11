import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterWhiteCircularProgress()],
      ),
      body: Center(child: LinearProgressIndicator()),
    );
  }
}

class CenterWhiteCircularProgress extends StatelessWidget {
  const CenterWhiteCircularProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 10,
    ));
  }
}
