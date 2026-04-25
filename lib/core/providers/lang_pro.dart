import 'package:flutter/foundation.dart';

class LangPro extends ChangeNotifier{

  String lang = 'en';

  void changeLang(String newLang){
    lang = newLang;
    notifyListeners();
  }

}