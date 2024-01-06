import 'package:equatable/equatable.dart';
import 'package:hive_flutter/adapters.dart';

import '../../core/constants/cache/cache_constants.dart';

part 'app_cache_model.g.dart';

@HiveType(typeId: CacheConstants.appCacheTypeId)
class AppCacheModel extends Equatable {
  @HiveField(0)
  final int? id;
  @HiveField(1)
  final String? name;
  @HiveField(2, defaultValue: true)
  final bool? isFirstInit;
  @HiveField(3)
  final String? favoriteDriver;

  const AppCacheModel(
      {this.id, this.name, this.isFirstInit, this.favoriteDriver});

  AppCacheModel copyWith({
    int? id,
    String? name,
    bool? isFirstInit,
    String? favoriteDriver,
  }) =>
      AppCacheModel(
        id: id ?? this.id,
        name: name ?? this.name,
        isFirstInit: isFirstInit ?? this.isFirstInit,
        favoriteDriver: favoriteDriver ?? this.favoriteDriver,
      );

  @override
  List<Object?> get props => [id, name, isFirstInit, favoriteDriver];
}
