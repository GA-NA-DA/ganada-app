import 'package:flutter/material.dart';
import 'package:ganada/info/infoButton.dart';
import 'package:ganada/loading/analysisLoadingPage.dart';
import 'dart:io';

class SurveyPage extends StatefulWidget {
  final int page;

  SurveyPage({required this.page});

  @override
  _SurveyPage createState() => _SurveyPage();
}

class _SurveyPage extends State<SurveyPage> {
  String filePath = '../../assets/data.json';

  _SurveyPage() {
    try {
      File file = File(filePath);
      String jsonData = file.readAsString() as String;
      print(jsonData);
    } catch (e) {
      print('파일을 읽어오는데 실패했습니다: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff5DB075),
      appBar: AppBar(
        backgroundColor: Color(0xff5DB075),
        foregroundColor: Color(0xff5DB075),
        centerTitle: true,
        title: 
          Column(children: [
            Text(
              '당신에 대해 더 알고 싶어요!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
        '(${widget.page}/10)',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
        ),
      ),
            ])
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 20),
            Container(
              width: 400,
              height: 100,
              padding: EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xff4B9460),
                  borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "쉬는 날이면 나는...",
                  style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // 원하는 각도로 설정
                ),
                minimumSize: const Size.fromHeight(220),
                backgroundColor: Colors.white,  
                surfaceTintColor: Colors.white,    
                foregroundColor: Colors.white,
              ),
              onPressed: () {
              },
              child: Text('', style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 4)]),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // 원하는 각도로 설정
                ),
                minimumSize: const Size.fromHeight(220),
                backgroundColor: Colors.white,  
                surfaceTintColor: Colors.white,    
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                
              },
              child: Text('', style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 70),
                  backgroundColor: Color(0xff4B9460),  
                  surfaceTintColor: Color(0xff4B9460),     
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back'),
                ),
                SizedBox(width: 50),
                ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 70),
                  backgroundColor: Color(0xff4B9460),  
                  surfaceTintColor: Color(0xff4B9460),     
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (widget.page == 10) {
                    Navigator.of(context).push(
                     MaterialPageRoute(builder: (BuildContext context) => AnalysisLoadingPage())
                  );
                  }
                  else {
                    Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => SurveyPage(page: widget.page + 1)),
                  );
                  }
                },
                child: Text('Next'),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}