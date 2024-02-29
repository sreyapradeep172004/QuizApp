import 'package:flutter/material.dart';
import 'package:quizapp/questionlist.dart';

class Que extends StatefulWidget {
  const Que({Key? key}) : super(key: key);

  @override
  State<Que> createState() => _QueState();
}

class _QueState extends State<Que> {
  List question = [
    Quiz(qus: 'car has 4 wheels', ans: true),
    Quiz(qus: 'human blood colour is yellow', ans: false),
    Quiz(qus: 'virat kohli is a football player ', ans: false),
    Quiz(qus: 'actor arjun ashokan is the son of actor ashokan', ans: true),
    Quiz(qus: 'mannumel boys is a real story', ans: true),
    Quiz(qus: 'devagiri college is located at thrissur', ans: true),
    Quiz(qus: 'bike has 4 wheels', ans: true),
    Quiz(qus: 'gpay is devloped using flutter', ans: true),
    Quiz(qus: 'mammooty is 50 years old', ans: false),
    Quiz(qus: 'there are 13 districts in kerala', ans: false),
  ];
  int question_no = 0;
  String result='';
  void nextque() {
    if (question_no < question.length) {
      question_no++;
    }
  }

  void answer(bool answer) {
    print(answer);
    if(answer==question[question_no].ans){
      result='correct';
    }
    else{
      result='wrong';
    }
  }
  String getqus() {
    return question[question_no].qus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              question[question_no].qus,
              style: TextStyle(fontSize: 28, color: Colors.amber),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                    ),
                    onPressed: () {
                      setState(() {
                        answer(true);
                        nextque();

                      });
                    },
                    child: Text('TRUE'))),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        answer(false);
                        nextque();
                      });
                    },
                    child: Text('FALSE'))),
        SizedBox(height:20),
        Text(result,style: TextStyle(color:Colors.white),),
          ],
        ),
      ),
    );
  }
}
