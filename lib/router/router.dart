// ignore_for_file: prefer_const_constructors

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
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);

    router.define('/provider',
        handler: _counterProviderHandler,
        transitionType: TransitionType.fadeIn);

    router.define('/dashboard/users/:userid/:roleid',
        handler: _dashboardUserHandler, transitionType: TransitionType.fadeIn);

    router.notFoundHandler = _pageNotFoundHandler;
  }

//Handlers o manejadores
  static Handler _counterHandler = new Handler(handlerFunc: (context, params) {
    // print(params['base']?[0]);

    return CounterView(base: params['base']?[0] ?? '5');
  });

//Handlers o manejadores

//Hand
//lers o manejadores
  // ignore: prefer_final_fields
  static Handler _counterProviderHandler =
      Handler(handlerFunc: (context, params) {
    print(params);

    return CounterProviderView(base: params['q']?[0] ?? '10');
  });

  // ignore: prefer_final_fields
  static Handler _dashboardUserHandler =
      Handler(handlerFunc: (context, params) {
    print(params);

    return View404();
  });

  static Handler _pageNotFoundHandler =
      new Handler(handlerFunc: (context, params) => View404());
}
