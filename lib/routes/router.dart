import 'package:flutter/material.dart';
// IMPORTA DO PACOTE DO FLURO
import 'package:fluro/fluro.dart';

// IMPORTA AS TELAS HOME E LOGIN OBS: IREMOS CRIAR LOGO EM SEGUIDA
import 'package:fluro_tutorial/pages/login.dart';
import 'package:fluro_tutorial/pages/home.dart';

// CRIA A CLASSE DE NAVEGAÇÃO DO FLURO
class NavigationRouter {
  static Router router = Router();
  static Handler _loginHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => LoginPage());
  static Handler _homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) => HomePage());

  // CONFIGURA AS TELAS LOGIN E HOME NO FLURO

  static void setupRouter() {
    router.define(
      'login',
      handler: _loginHandler,
    );
    router.define(
      'home/',
      handler: _homeHandler,
    );
  }
}