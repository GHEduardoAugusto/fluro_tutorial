// IMPORTA O ARQUIVO DE ROTAS QUE OBS: IREMOS CRIAR LOGO EM SEGUIDA
import 'package:fluro_tutorial/routes/router.dart';
import 'package:flutter/material.dart';
void main() {
  // INICIALIZA AS ROTAS
  NavigationRouter.setupRouter();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fluro Tutorial',
        // DEFINE A TELA LOGIN COMO TELA INICIAL AO ABRIR O APP
        initialRoute: 'login',
        // UTILIZA O GERADOR FORNECIDO PELO PACOTE DO FLURO
        onGenerateRoute: NavigationRouter.router.generator
    );
  }
}