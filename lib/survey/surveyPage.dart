import 'package:flutter/material.dart';
import 'package:ganada/info/infoButton.dart';

class SurveyPage extends StatefulWidget {
  final int page;

  SurveyPage({required this.page});

  @override
  _SurveyPage createState() => _SurveyPage();
}

class _SurveyPage extends State<SurveyPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 163, 73),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 163, 73),
        foregroundColor: Color.fromARGB(255, 0, 163, 73),
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
        '[${widget.page}/10]',
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
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 129, 58),
                    borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    "",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                    ),
                    ),
                ),
                SizedBox(width: 30),
                Container(
                  width: 350,
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 129, 58),
                    borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "쉬는 날이면 나는...",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white
                    ),
                    ),
                )
              ],
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
                  backgroundColor: Color.fromARGB(255, 0, 129, 58),  
                  surfaceTintColor: Color.fromARGB(255, 0, 129, 58),     
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
                  backgroundColor: Color.fromARGB(255, 0, 129, 58),  
                  surfaceTintColor: Color.fromARGB(255, 0, 129, 58),     
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  if (widget.page == 10) {
                    Navigator.of(context).push(
                     MaterialPageRoute(builder: (BuildContext context) => SurveyPage(page: -1))
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