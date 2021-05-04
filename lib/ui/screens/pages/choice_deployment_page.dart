import 'package:flutter/material.dart';

import 'base_choice_page.dart';

class ChoiceDeploymentPage extends StatelessWidget {
  final String pageContent = 'What kind of software type is it?';
  final List<String> titles = [
    'Desktop Application',
    'Mobile Application',
    'Web Frontend Application',
    'Backend API',
    'Server Side Rendering',
  ];
  final List<String> descriptions = [
    'Desktop app for Windows and MAC',
    'Native application for Android or IOS',
    'Written with React, Vue, Angular',
    'RESTful JSON application',
    'A monolith application rendering content from server directly to client browsers',
  ];

  @override
  Widget build(BuildContext context) {
    return BaseChoicePage(pageContent, titles, descriptions);
  }
}
