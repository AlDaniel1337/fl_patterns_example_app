import 'package:flutter/cupertino.dart';
import 'package:logging/logging.dart';
import 'package:intl/intl.dart';

abstract class BaseLogger {
  /// Sistema de logs
  @protected
  late Logger logger;

  /// Fecha con formato
  @protected
  final DateFormat dateFormatter = DateFormat('H:m:s.S');

  /// Nombre de la aplicación
  static const appName = 'patterns_example_app';

  /// Mostrar los logs
  void log(
    message, 
    [
      Object? error, 
      StackTrace? stackTrace
    ]
  ) => logger.info(message, error, stackTrace);
}
