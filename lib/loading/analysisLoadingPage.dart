import 'package:flutter/material.dart';

class AnalysisLoadingPage extends StatefulWidget {
  @override
  _AnalysisLoadingPageState createState() => _AnalysisLoadingPageState();
}

class _AnalysisLoadingPageState extends State<AnalysisLoadingPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 163, 73),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
        child: Container(
          height: 450,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                "OO님의",
                style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "여행스타일 분석중",
                style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10,),
              Image.asset('../../web/icons/Icon-192.png'),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  backgroundColor: Color.fromARGB(255, 0, 163, 73),  
                  surfaceTintColor: Color.fromARGB(255, 0, 163, 73),    
                  foregroundColor: Colors.white,
                ),
                onPressed: () {

                },
                child: Text('나의 여행스타일 보러가기'),
              ),
              ),
            SizedBox(height: 16),
            Container(
              alignment: Alignment.center, 
              child: Text('다시하기', style: TextStyle(color: Color.fromARGB(255, 0, 163, 73),),)
            )
            ],
          )
          ),
      )
    );
  }
}