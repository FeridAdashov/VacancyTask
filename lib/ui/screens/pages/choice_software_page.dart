import 'package:flutter/material.dart';

import 'base_choice_page.dart';

class ChoiceSoftwarePage extends StatelessWidget {
  final String pageContent = 'Witch deployment type does it require?';
  final List<String> titles = [
    'Manual',
    'Automated Complies',
    'Continues delivery',
    'Planning',
  ];
  final List<String> descriptions = [
    'Developers will manually compile and release version',
    'Complation script is included to prepare the binary. But deployment is manual',
    'CI/CD pipelines compile from source code',
    'Lorem impsum some example text',
  ];

  @override
  Widget build(BuildContext context) {
    return BaseChoicePage(pageContent, titles, descriptions);
  }
}
