import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 70,
        ),
        Image.asset(
            "assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png"),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              size: 30,
            ),
            Padding(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Icon(
                Icons.play_arrow,
                size: 50,
              ),
            ),
            Icon(
              Icons.skip_next,
              size: 30,
            ),
          ],
        ),
        const SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
