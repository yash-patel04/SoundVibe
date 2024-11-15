import 'package:shared_preferences/shared_preferences.dart';

class LanguageUtils {
  // Method to save selected language
  static Future<void> saveSelectedLanguage(String languageCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('selected_language', languageCode);
  }

  // Method to get selected language
  static Future<String?> getSelectedLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('selected_language');
  }
}
