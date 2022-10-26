import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier{
  bool? isEligible;
  String? eligibilityMassage = "";

  void checkEligibility(int age){
    if(age >= 18){
      isEligible = true;
      eligibilityMassage = "You are eligible to drive";
      notifyListeners();
    }else{
      isEligible = false;
      eligibilityMassage = "You are Not eligible to drive";
      notifyListeners();
    }
  }

}