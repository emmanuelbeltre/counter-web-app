import 'package:fluro/fluro.dart';

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

//
//
//
final counterHandler = new Handler(handlerFunc: (context, params) {
  return CounterView(base: params['base']?.first ?? '5');
});

final counterProviderHandler = Handler(handlerFunc: (context, params) {
  return CounterProviderView(base: params['q']?[0] ?? '10');
});

// ignore: prefer_final_fields
final dashboardUserHandler = Handler(handlerFunc: (context, params) {
  return View404();
});

final pageNotFoundHandler =
    new Handler(handlerFunc: (context, params) => View404());
