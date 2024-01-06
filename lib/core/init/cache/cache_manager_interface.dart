import 'package:hive_flutter/hive_flutter.dart';

abstract class CacheManagerInterface<T> {
  final String key;
  Box<T>? box;

  CacheManagerInterface(this.key);

  Future<void> init() async {
    if (!(box?.isOpen ?? false)) {
      box = await Hive.openBox(key);
    }
  }
}
