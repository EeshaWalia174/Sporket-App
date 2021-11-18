import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sporket/Utils/BaseUrl.dart';

class ContestApi {
  String contesturl = BaseUrl.url + "events/myContest/";

  Future<http.Response> getDashboardDetails() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    return http.get(Uri.parse(contesturl),
        headers: {"Authorization": "Bearer $token"});
  }
}
