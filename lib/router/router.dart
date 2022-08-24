import 'package:bases_web/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterHandler);
  }

//Handlers o manejadores
  static Handler _counterHandler =
      new Handler(handlerFunc: (context, params) => CounterView());
}
