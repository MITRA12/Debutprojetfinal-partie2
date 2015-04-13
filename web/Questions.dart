class Question {
  String la_question;
  List<String> les_reponses = new List<String>();
  int bonneReponse;
  
  Question(String la_question, String r1, String r2,String r3, String r4 , int bonneReponse){
    this.la_question = la_question;
    this.les_reponses.add(r1); 
    this.les_reponses.add(r2); 
    this.les_reponses.add(r3); 
    this.les_reponses.add(r4);
    this.bonneReponse = bonneReponse;
  }
  
   
 }