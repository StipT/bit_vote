import 'package:freezed_annotation/freezed_annotation.dart';

part "menu_events.freezed.dart";

@freezed
class MenuEvents with _$MenuEvents {

  const factory MenuEvents.initUser() = InitUser;

  const factory MenuEvents.onLogout() = OnLogout;
}