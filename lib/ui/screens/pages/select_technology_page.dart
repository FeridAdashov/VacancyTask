import 'package:flutter/material.dart';

import 'base_select_page.dart';

class SelectTechnologyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSelectPage(
        'What language does it use?',
        'Please choose any programming language or technology below. You may type in the names manually as well.',
        'Activity category',
        'Input category',
        [
          'Java',
          'Python',
          'ASP.NET Core',
          'Dart',
          'Spring Boot',
          'React.js',
        ]);
  }
}
