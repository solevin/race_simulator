import 'package:flutter/material.dart';

class RaceViewModel with ChangeNotifier {
    var selectedQuestionQuantity = 3;
    var selectedMemberQuantity = 3;

  void notify() => notifyListeners();
}