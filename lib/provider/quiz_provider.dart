import 'package:bijoy/model/quiz_model.dart';
import 'package:bijoy/repositore/quiz_repositore.dart';
import 'package:bijoy/screen/quiz/quiz_page.dart';
import 'package:bijoy/screen/quiz/score_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


class QuizProvider with ChangeNotifier {
  QuizRepo quizRepo =QuizRepo();
  List<QuestionModel> _questionModelList= [];
  List<QuestionModel> get questionModelList => _questionModelList;

  initializeAllQuestion(){
    if(_questionModelList.length == 0){
      _questionModelList.clear();
      _questionModelList= quizRepo.getQuestionModelList;
      notifyListeners();
    }
  }

  checkAnswer(int index){
    ansVisibility=true;
    if(questionModelList
    [questionNumber].answerValue[index]==1)
    {
      score++;
      optionColorList[index]=Color(0xff24ad08);
    }
    else
    {
      optionColorList[index]=Color(0xffef071a);
    }
    notifyListeners();
  }

  decQuestionNumber(){
    if(questionNumber>0)
    {
      questionNumber--;
    }
    else
    {

    }
    notifyListeners();

  }

  nextButtonPress(context){
    if(questionNumber<QuizRepo().getQuestionModelList.length-1)
      questionNumber++;
    else
    {
      questionNumber=0;
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context)=>ScoreView(
                totalScore: score,
              )));
    }
    notifyListeners();
  }

}