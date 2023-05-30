import 'dart:developer';

import 'package:application/addThiker.dart';
import 'package:application/sql_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class ProviderModel extends ChangeNotifier {


  ProviderModel(){
    getAllAthkar();
  }

  List<String> list = [
    "أسـتغفر الله، أسـتغفر الله، أسـتغفر الله.\nاللهـم أنـت السلام ، ومـنك السلام ، تباركت يا ذا الجـلال والإكـرام .",
    "لا إله إلا الله وحده لا شريك له، له المـلك وله الحمد، وهو على كل شيء قدير، اللهـم لا مانع لما أعطـيت، ولا معطـي لما منـعت، ولا ينفـع ذا الجـد منـك الجـد. ",
    "لا إله إلا الله, وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، لا حـول ولا قـوة إلا بالله، لا إله إلا اللـه، ولا نعـبـد إلا إيـاه, له النعـمة وله الفضل وله الثـناء الحـسن، لا إله إلا الله مخلصـين لـه الدين ولو كـره الكـافرون.",
    "سـبحان الله، والحمـد لله ، والله أكـبر. ",
    "لا إله إلا الله وحـده لا شريك له، له الملك وله الحمد، وهو على كل شيء قـدير."
  ];

  List<int> counts = [3, 4, 2,3, 1];

  int getCount(int index) {
    return counts[index];
  }
int count = 100;

  void startCountdown() {
    if (count > 0) {
      count--;
      notifyListeners();
    }
  }
  void incrementCount(int index) {
    counts[index]--;
    if (counts[index] == 0) {
      list.removeAt(index);
      counts.removeAt(index);
    }
    notifyListeners();
  }


  TextEditingController thekerController = TextEditingController();
  TextEditingController counterController = TextEditingController();

  addThiker()async{
    await SQLHelper.createItem(thekerController.text, int.parse(counterController.text));
    getAllAthkar();
    counterController.clear();
    thekerController.clear();
    notifyListeners();
  }

  deleteTheker(int id)async{
    await SQLHelper.deleteItem(id);
    getAllAthkar();
    notifyListeners();
  }


  List<Map<String, dynamic>> athkar = [];
  List<int> counterAthkar = [];

  getAllAthkar()async{
    counterAthkar = [];
    athkar= await SQLHelper.getItems();
    for(int i=0;i<athkar.length;i++){
      counterAthkar.add(athkar[i]['counter']) ;
    }
    notifyListeners();
  }





}

