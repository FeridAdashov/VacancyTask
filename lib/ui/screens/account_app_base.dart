import 'package:flutter/material.dart';
import 'package:vacancy_task/utils/constants.dart';
import 'package:vacancy_task/utils/widgets/next_button.dart';
import 'package:vacancy_task/utils/widgets/show_current_page_indicator.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    Scaffold(
      appBar: AppBar(
        title: Text('Test Page'),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    void _nextPage() {
      setState(() {
        if (_pageIndex < _pages.length - 1) ++_pageIndex;
      });
    }

    void _previousPage() {
      setState(() {
        if (_pageIndex > 0) --_pageIndex;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: InkWell(
          onTap: _previousPage,
          child: Constants.APP_BAR_ICONS[_pageIndex],
        ),
        title: Text(
          Constants.APP_BAR_TITLES[_pageIndex],
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
        elevation: 0.0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ShowCurrentPageIndicator(
                      widget: Container(),
                      isActive: _pageIndex == 0,
                      height: 10),
                  ShowCurrentPageIndicator(
                      widget: Container(),
                      isActive: _pageIndex == 1,
                      height: 10),
                  ShowCurrentPageIndicator(
                      widget: Container(),
                      isActive: _pageIndex == 2,
                      height: 10),
                  ShowCurrentPageIndicator(
                      widget: Container(),
                      isActive: _pageIndex == 3,
                      height: 10),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: _pages[_pageIndex],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: NextButton(
                  tapFunction: () => _nextPage(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
