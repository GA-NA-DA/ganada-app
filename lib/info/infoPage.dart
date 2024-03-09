import 'package:flutter/material.dart';
import 'package:ganada/info/infoButton.dart';
import 'package:ganada/survey/surveyPage.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  String name = '';
  int age = 0;
  bool gender = false;
  bool hasPet = false;
  bool hasDisability = false;

  void handleGenderButtonSelect(String selectedButton) {
    if (selectedButton == 'O') hasDisability = true;
    else hasDisability = false;
    print('Selected Button: $selectedButton');
  }

  void handleDisabilityButtonSelect(String selectedButton) {
    if (selectedButton == 'O') hasDisability = true;
    else hasDisability = false;
    print('Selected Button: $selectedButton');
  }

  void handlePetButtonSelect(String selectedButton) {
    if (selectedButton == 'O') hasPet = true;
    else hasPet = false;
    print('Selected Button: $selectedButton');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
              '당신에 대해 알려주세요',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text('이름'),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 240, 238, 238),
                contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            SizedBox(height: 30),
            Text('나이'),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 240, 238, 238),
                contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  age = int.parse(value);
                });
              },
            ),
            SizedBox(height: 30),
            Text('성별'),
            InfoButton(
              left: '남',
              right: '여',
              onSelectButton: handleGenderButtonSelect,
            ),
            SizedBox(height: 30),
            Text('반려동물 유무'),
            InfoButton(
              left: 'O',
              right: 'X',
              onSelectButton: handlePetButtonSelect,
            ),
            SizedBox(height: 30),
            Text('장애여부'),
            InfoButton(
              left: 'O',
              right: 'X',
              onSelectButton: handleDisabilityButtonSelect,
            ),
            SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(70),
                backgroundColor: Color.fromARGB(255, 0, 163, 73),  
                surfaceTintColor: Color.fromARGB(255, 0, 163, 73),    
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => SurveyPage(page: 1)),
                );
              },
              child: Text('다음으로'),
            ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.center, 
              child: Text('이미 계정이 있습니다', style: TextStyle(color: Color.fromARGB(255, 0, 163, 73),),)
            )
          ],
        ),
      ),
    );
  }
}