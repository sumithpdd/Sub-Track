import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:sub_track/app/app.locator.dart';
import 'package:sub_track/core/enums/enums.dart';
import 'package:sub_track/ui/shared/shared.dart';

class OtherSelectViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  late OtherDetailSelectType _type;
  late dynamic? _selected;
  late List _options;

  List get options => _options;
  get selected => _selected;

  pop({dynamic? selected}) => _navigationService.back(id: 2, result: selected);

  setupType(OtherDetailSelectType value, {dynamic? selected}) {
    _type = value;
    _selected = selected;
    switch (_type) {
      case OtherDetailSelectType.Renews_Every:
        _options = RenewsEvery.values;
        break;
      case OtherDetailSelectType.Notification:
        _options = NotifyOn.values;
        break;
    }
    notifyListeners();
  }

  List getOptions() {
    switch (_type) {
      case OtherDetailSelectType.Renews_Every:
        return RenewsEvery.values.map((e) => [e.name, e]).toList();
      case OtherDetailSelectType.Notification:
        return NotifyOn.values.map((e) => [e.name, e]).toList();
    }
  }
}
