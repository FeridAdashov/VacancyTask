import 'package:flutter/material.dart';

class BaseChoicePage extends StatefulWidget {
  final String pageContent;
  final List<String> choiceCardsTitle, choiceCardsDescription;

  const BaseChoicePage(this.pageContent, this.choiceCardsTitle, this.choiceCardsDescription);

  @override
  _BaseChoicePageState createState() => _BaseChoicePageState();
}

class _BaseChoicePageState extends State<BaseChoicePage> {
  int _selectedIndex = 0;
  var choiceCardsStatus = [];

  @override
  void initState() {
    super.initState();
    choiceCardsStatus = List.filled(widget.choiceCardsTitle.length, false);
    choiceCardsStatus[0] = true;
  }

  void changeChoiceCardStatus(int index) {
    setState(() {
      choiceCardsStatus[_selectedIndex] = false;
      choiceCardsStatus[index] = true;
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.pageContent,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
          SizedBox(height: 30),
          ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              padding: const EdgeInsets.all(8),
              itemCount: choiceCardsStatus.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () => changeChoiceCardStatus(index),
                  leading: Icon(choiceCardsStatus[index]
                      ? Icons.radio_button_checked
                      : Icons.radio_button_off),
                  title: Text(widget.choiceCardsTitle[index]),
                  subtitle: Text(widget.choiceCardsDescription[index]),
                );
              })
        ],
      ),
    );
  }
}
