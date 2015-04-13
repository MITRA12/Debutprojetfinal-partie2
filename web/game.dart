// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'lesQuestions.dart';
import 'Questions.dart';
import 'dart:async';

 AudioElement son;
 
 Element laQuestion = querySelector('#Question');
 Element reponses = querySelector('#reponses');
 List<Question> listeDesQuestions = listeQuestions();
 List<int> choixUtilisateur = new List<int>();

Element next = querySelector('#next'); 
Element rep1 = querySelector('#rep1');
Element rep2 = querySelector('#rep2');
Element rep3 = querySelector('#rep3');
Element rep4 = querySelector('#rep4'); 

 int compteur = -1;
 Timer chrono = null;
 const TIMEOUT = const Duration(seconds: 3);
 const ms = const Duration(milliseconds: 1);
 

 
 
 void main() {
    
  // debuterChrono();
   chargerQuestions(); 
   initChoixUtil();     
   choixReponses();
   next.onClick.listen((event) => chargerQuestions());        
}
 
 void choixReponses(){
       
      
      rep1.onClick.listen(clickReponse);
      rep2.onClick.listen(clickReponse);
      rep3.onClick.listen(clickReponse);
      rep4.onClick.listen(clickReponse);
 }
 
 void clickReponse (Event e){
   
   Element temp = e.target;
   son= new AudioElement();
   
   son = querySelector('#sonNext');
   son.play();
   
   if(temp == rep1){
     choixUtilisateur[compteur] = 1;
     rep1.focus();son.play();
   }else if(temp == rep2){
     choixUtilisateur[compteur] = 2;
     rep2.focus();son.play();
   }else if(temp == rep3){
     choixUtilisateur[compteur] = 3;
     rep3.focus();son.play();
   }else if(temp == rep4){
     choixUtilisateur[compteur] = 4;
     rep4.focus();son.play();
   }
   
 }

  
  void chargerQuestions(){
   compteur++;
   
   if(compteur<listeDesQuestions.length){      
    
    laQuestion.text = listeDesQuestions[compteur].la_question ; // on charge  la question 
    rep1.text = listeDesQuestions[compteur].les_reponses[0];
    rep2.text = listeDesQuestions[compteur].les_reponses[1];
    rep3.text = listeDesQuestions[compteur].les_reponses[2];
    rep4.text = listeDesQuestions[compteur].les_reponses[3];
     
  }else{ afficherResultats(); }
    
  }
    
  
    void afficherResultats(){
     
      querySelector('#next').remove();
      querySelector('#Question').remove();
      querySelector('#reponses').remove();
      UListElement listeResultat = new UListElement();
      LIElement nouveau = new LIElement();
      listeResultat = querySelector('#result'); 
      
      print(choixUtilisateur.toString());   
      int trouvee = 0;
      for(int i =0 ; i< 10 ; ++i){
        int a = i+1; 
        String temp;
        
        
              if(choixUtilisateur[i] == listeDesQuestions[i].bonneReponse ){  
                trouvee++;      
                temp = listeDesQuestions[i].la_question;
                nouveau.text = "$temp : Bonne réponse";
                listeResultat.children.add(nouveau);
              }else if(choixUtilisateur[i] == 999){
                temp = listeDesQuestions[i].la_question;
                nouveau.text = "$temp: Aucune réponse";
                listeResultat.children.add(nouveau); 
              }else{
                temp = listeDesQuestions[i].la_question;
                nouveau.text = "$temp: Mauvaise réponse";
                listeResultat.children.add(nouveau);               
              }
              nouveau = new LIElement();
            }
      
      querySelector('#score').text = " Votre Scrore : $trouvee / 10  " ;
    }
    
    void initChoixUtil(){
      
      for(int i =0 ; i< 10 ; ++i){
        choixUtilisateur.add(999);
      }
    }
    
    
     
    void finChrono(){
     // afficherResultats();
      int temps = 5 *60;      
       temps--;
       querySelector('#temps').text = "$temps";
      
      }
            
       
    
   

    
    
   /*  void debuterChrono() {
       var oneSecond = new Duration(seconds:1);
       chrono = new Timer.periodic(oneSecond, handleTimeout);
     /* int s = dure.inSeconds.remainder(Duration.SECONDS_PER_MINUTE);
      querySelector('#temps').text = "$s";**/
    
    }
   
    void handleTimeout( Timer _) {  // callback function
      int s = 10;
      s--;
      querySelector('#temps').text = "$s";
    }
    **/
     
  
  
