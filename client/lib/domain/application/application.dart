import 'package:freezed_annotation/freezed_annotation.dart';
part 'application.freezed.dart';

@freezed
abstract class Application with _$Application {
  // Constructor
  const factory Application() = _Application;

// Intial creator
  factory Application.initial() => Application();
}
