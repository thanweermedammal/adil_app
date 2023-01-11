import 'package:shared_value/shared_value.dart';

final SharedValue<bool> is_logged_in = SharedValue(
  value: false, // initial value
  key: "is_logged_in", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<String> username = SharedValue(
  value: "", // initial value
  key: "username", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<String> pass = SharedValue(
  value: "", // initial value
  key: "password", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<int> user_id = SharedValue(
  value: 0, // initial value
  key: "user_id", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<int> loguser_id = SharedValue(
  value: 0, // initial value
  key: "loguser_id", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<int> report_id = SharedValue(
  value: 0, // initial value
  key: "report_id", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<String> name = SharedValue(
  value: "", // initial value
  key: "name", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
final SharedValue<String> engimage = SharedValue(
  value: "", // initial value
  key: "engimage", // disk storage key for shared_preferences
  autosave: true, // autosave to shared prefs when value changes
);
