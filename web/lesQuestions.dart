// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The tp library.
/// 

library tp;
import 'Questions.dart';


   
  Question Q1 = new Question("Quelle est la capitale de la République Démocratique du Congo?",
      "Vatican","Kinshasa","Abidjan","Yaoundé",2);
  
  Question Q2 = new Question("Qui a gagné la coupe du monde 2014 de Football(Soccer) en 2014?",
        "France","Espagne","Allemagne","Cameroun",3);
  
  Question Q3 = new Question("Qui est le créateur du jeu de rôle le plus populaire ( Donjon et Dragon)?",
      "Gary Gygax","Tolkien","Vin Diesel","Tom Spencer",1);
  
  Question Q4 = new Question("Quelle est la plus grande ville du Canada?",
        "Calgary","Montreal","Ottawa","Toronto",4);
  
  Question Q5 = new Question("Combien de planète y a-t-il dans le système solaire?",
        "5","7","8","10",3);
  
  Question Q6 = new Question("En quelle année est mort Michael Jackson?",
         "2007","2008","2009","2010",3);
  
  Question Q7 = new Question("Qui a effectué le premier pas de l'homme sur la lune?",
          "Lance Armstrong","Benjamin Button","Bethoven","Neil Armstrong",4);
  
  Question Q8 = new Question("Dans quel pays se trouve l'Atomnium?",
            "France","Italie","Belgique","Luxembourg",3);
  
  Question Q9 = new Question("Contre quel système politique Nelson Mandela luttait-il ?",
              "Communisme","Apartheid","Antisémitisme","Charia",2);
  
  Question Q10 = new Question("Quel est le plus grand Océan au monde?",
                "Pacifique","Antarctique","Indien","Artic",1);
     
  
  
  List<Question> listeQuestions(){
    
  List<Question> listeQuestion = new List<Question>();
  listeQuestion.add(Q1);
  listeQuestion.add(Q2);
  listeQuestion.add(Q3);
  listeQuestion.add(Q4);
  listeQuestion.add(Q5);
  listeQuestion.add(Q6);
  listeQuestion.add(Q7);
  listeQuestion.add(Q8);
  listeQuestion.add(Q9);
  listeQuestion.add(Q10);
  
  return listeQuestion;
}

