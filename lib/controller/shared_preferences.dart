import 'package:shared_preferences/shared_preferences.dart';

Future<List<String>?> getreason1(key) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getStringList(key);
}

Future<List<String>?> getamount2(key) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getStringList(key + 'amount');
}

Future<List<String>?> gettime3(key) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.getStringList(key + 'time');
}

Future<Future<bool>> savereason(List<String> reason, {String? key}) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.setStringList(key!, reason);
}

Future<Future<bool>> saveamount(List<String> amount, {String? key}) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.setStringList('${key!}amount', amount);
}

Future<Future<bool>> savetime(List<String> time, {String? key}) async {
  SharedPreferences sf = await SharedPreferences.getInstance();
  return sf.setStringList('${key!}time', time);
}