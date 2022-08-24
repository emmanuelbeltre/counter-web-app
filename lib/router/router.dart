import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: _counterStatefulHandler,
        transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFoundHandler;
  }

//Handlers o manejadores
  static Handler _counterHandler =
      new Handler(handlerFunc: (context, params) => CounterView());
//Handlers o manejadores
  static Handler _counterStatefulHandler =
      new Handler(handlerFunc: (context, params) => CounterView());
//Handlers o manejadores
  static Handler _counterProviderHandler =
      new Handler(handlerFunc: (context, params) => CounterProviderView());
  static Handler _pageNotFoundHandler =
      new Handler(handlerFunc: (context, params) => View404());
}
