import 'package:bijoy/model/bir_uttom_model.dart';
import 'package:bijoy/repositore/bir_uttom_repo.dart';
import 'package:flutter/foundation.dart';

class BirUttomProvider with ChangeNotifier{
  BirUttomReop birUttomReop = BirUttomReop();
  List<BirUttomModel> _birUttomModelList = [];
  List<BirUttomModel> get birUttomModelList => _birUttomModelList;
  initializeAllBirUttom(){
    if(_birUttomModelList.length==0){
      _birUttomModelList.clear();
      _birUttomModelList = birUttomReop.getAllBirUttomList;
      notifyListeners();
    }
  }
}