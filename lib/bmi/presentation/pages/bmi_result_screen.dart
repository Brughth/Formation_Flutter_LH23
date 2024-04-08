import 'package:demo/bmi/data/models/bmi_result_model.dart';
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final BmiResultModel bmiResult;

  const BmiResultScreen({
    super.key,
    required this.bmiResult,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          bmiResult.status,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bmiResult.image),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.pink.withOpacity(.9),
              BlendMode.screen,
            ),
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 50),
            Center(
              child: Text(
                bmiResult.bmi.toStringAsFixed(2),
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 80,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Description",
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            const SizedBox(height: 6),
            Text(
              bmiResult.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              "Conceil",
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            const SizedBox(height: 6),
            Text(
              bmiResult.advice,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
      ),
    );
  }
}
