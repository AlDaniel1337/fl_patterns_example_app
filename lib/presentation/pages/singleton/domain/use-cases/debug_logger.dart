import 'package:patterns_examples_app/presentation/pages/singleton/domain/classes/base_logger.dart';
import 'package:logging/logging.dart';
import 'package:flutter/cupertino.dart';


class DebugLogger extends BaseLogger {
  static DebugLogger? _instance;

  /// Constructor privado
  DebugLogger._internal() {
    // Configuración del logger
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen(_recordHandler);
    logger = Logger(BaseLogger.appName);
    debugPrint('<DebugLogger> creation');
    _instance = this;
  }


  ///  Constructor Fatory Publico
  ///- Instanciación Lazy
  ///+ Cuando se cree una instancia del [DebugLogger] por primera vez se llamara el DebugLogger._internal();
  ///+ despues cada que se quiera crear una nueva instancia siempre regresara la primer instancia
  factory DebugLogger() => _instance ?? DebugLogger._internal();


  /// Manejo de los logs
  void _recordHandler(LogRecord rec) {
    debugPrint( '${dateFormatter.format(rec.time)}: ${rec.message}, ${rec.error}' );
  }
}