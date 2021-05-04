import 'package:flutter/material.dart';
import 'package:vacancy_task/utils/widgets/choice_button.dart';

class BaseSelectPage extends StatefulWidget {
  final String pageHeader, pageContent, inputLabel, inputHint;
  final List<String> choiceButtonsText;

  const BaseSelectPage(
      this.pageHeader, this.pageContent, this.inputLabel, this.inputHint,this.choiceButtonsText);

  @override
  _BaseSelectPageState createState() => _BaseSelectPageState();
}

class _BaseSelectPageState extends State<BaseSelectPage> {
  var choiceButtonsStatus = [];

  @override
  void initState() {
    super.initState();
    choiceButtonsStatus = List.filled(widget.choiceButtonsText.length, false);
    choiceButtonsStatus[0] = true;
  }

  void changeChoiceButtonStatus(int index) {
    setState(() {
      choiceButtonsStatus[index] = !choiceButtonsStatus[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            child: Text(
              widget.pageHeader,
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              widget.pageContent,
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              widget.inputLabel,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: widget.inputHint,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            ChoiceButton(
              text: widget.choiceButtonsText[0],
              isActive: choiceButtonsStatus[0],
              changeStatus: () => changeChoiceButtonStatus(0),
            ),
            ChoiceButton(
              text: widget.choiceButtonsText[1],
              isActive: choiceButtonsStatus[1],
              changeStatus: () => changeChoiceButtonStatus(1),
            ),
            ChoiceButton(
              text: widget.choiceButtonsText[2],
              isActive: choiceButtonsStatus[2],
              changeStatus: () => changeChoiceButtonStatus(2),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ChoiceButton(
              text: widget.choiceButtonsText[3],
              isActive: choiceButtonsStatus[3],
              changeStatus: () => changeChoiceButtonStatus(3),
            ),
            ChoiceButton(
              text: widget.choiceButtonsText[4],
              isActive: choiceButtonsStatus[4],
              changeStatus: () => changeChoiceButtonStatus(4),
            ),
            ChoiceButton(
              text: widget.choiceButtonsText[5],
              isActive: choiceButtonsStatus[5],
              changeStatus: () => changeChoiceButtonStatus(5),
            )
          ],
        )
      ],
    );
  }
}
