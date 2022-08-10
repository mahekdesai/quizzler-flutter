import 'package:quizzler/questions.dart';
class QuizBrain{
  bool fin = false;
  int _qno = 0;
  List<Questions> _questions = [
    Questions(qt: 'You can lead a cow downstairs but not upstairs', qa: false),
    Questions(qt: 'Jiya has a brain', qa: false),
    Questions(qt: 'A slug\'s blood is green', qa: true),
    Questions(qt: 'Sky is blue', qa: true),
    Questions(qt: 'Grass is green', qa: true),
  ];
  String getQuestionText(){
    return _questions[_qno].qtext;
  }

  bool getAns(){
    return _questions[_qno].qans;
  }

  void nextQuestion(){
    if(_qno < _questions.length - 1){
      _qno++;
    }
  }

  bool isFinished() {
    if (_qno == _questions.length - 1) {
      fin=true;
      return fin;
    }
    else {
      return fin;
    }
  }

  void reset(fin){
    if(fin) {
      _qno = -1;
    }
  }
}