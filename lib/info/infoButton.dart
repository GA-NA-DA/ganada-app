import 'package:flutter/material.dart';

class InfoButton extends StatefulWidget {
  final String left, right;
  final Function(String) onSelectButton; 

  InfoButton({required this.onSelectButton, required this.left, required this.right});

  @override
  _InfoButton createState() => _InfoButton();
}

class _InfoButton extends State<InfoButton> {
  String selectedButton = 'O'; // 선택된 버튼을 저장하는 변수

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 240, 238, 238),
        borderRadius: BorderRadius.circular(15)),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = 'O'; // O 버튼을 선택하면 'O'로 설정
              widget.onSelectButton(selectedButton);
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: selectedButton == 'O' ? Colors.white : Color.fromARGB(255, 240, 238, 238), // O 버튼 선택 여부에 따라 색상 변경
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), // 좌측 상단 모서리만 둥글게 설정
                bottomLeft: Radius.circular(15), // 좌측 하단 모서리만 둥글게 설정
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
              widget.left,
              style: TextStyle(
                color: selectedButton == 'O' ? Color.fromARGB(255, 0, 163, 73) : Colors.white, // O 버튼 선택 여부에 따라 텍스트 색상 변경
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),)
          ),
        ),
        ),
        Expanded(child: GestureDetector(
          onTap: () {
            setState(() {
              selectedButton = 'X'; // X 버튼을 선택하면 'X'로 설정
              widget.onSelectButton(selectedButton);
            });
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: selectedButton == 'X' ? Colors.white : Color.fromARGB(255, 240, 238, 238), // X 버튼 선택 여부에 따라 색상 변경
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), // 좌측 상단 모서리만 둥글게 설정
                bottomRight: Radius.circular(15), // 좌측 하단 모서리만 둥글게 설정
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
              widget.right,
              style: TextStyle(
                color: selectedButton == 'X' ? Color.fromARGB(255, 0, 163, 73) : Colors.white, // X 버튼 선택 여부에 따라 텍스트 색상 변경
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),)
          ),
        ),)
      ],
    ));
  }
}
