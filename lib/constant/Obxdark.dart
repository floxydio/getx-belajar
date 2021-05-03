import 'package:get/get.dart';

class Message extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello, World'},
        'id_ID': {'hello': 'Halo Dunia'}
      };
}
