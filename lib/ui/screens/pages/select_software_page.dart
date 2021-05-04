import 'package:flutter/material.dart';

import 'base_select_page.dart';

class SelectSoftwarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseSelectPage(
        'Type software name below',
        'You may type in a new name or choose below any of the suggested names from chips.',
        'Software name',
        'Input name',
        [
          'Learnarea',
          'My Teacher',
          'Coder Max',
          'Learning Doctor',
          'Master Softwu',
          'Soft Driver',
          'Other',
        ]);
  }
}
