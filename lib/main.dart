import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';  //* lo importó al agregar GETMATERIALAPP 
import 'package:login/config/theme/app_theme.dart';
import 'package:login/features/authentication/screens/splash_screen/splash_screen.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart'; //* paquete de SPLASH

void main() {
  //! Sigue # 8
  // En consola: dart run flutter_native_splash:create
  // En consola: dart run flutter_native_splash:remove
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized(); //* Inicializar SPLASH
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding); //* Perservar SPLASH

  runApp(const MainApp());

  // FlutterNativeSplash.remove(); //* Remover SPLASH cuando la app termine de construirse
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp( //* GETMATERIALAPP indica está implementado el GETX

      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(), 
      darkTheme: AppTheme().getThemeBlack(),
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade, //* Al usar GETX ( GETMATERIALAPP ), podemos usar las transiciones
      transitionDuration: const Duration( milliseconds: 500 ), //* Al usar GETX usamos el tiempo de transición
      home: SplashScreen(),

    );
  }
}


// Estaba en home --------------------------------------
class _AppHome extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('appable'),
        leading: const Icon( Icons.ondemand_video_outlined),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_shopping_cart_outlined),
        onPressed: () {
          
        },
      ),

      body: Padding(padding: const EdgeInsets.all(20),
      child: ListView(
        children: [

          Text('Heading', 
          style: Theme.of(context).textTheme.headlineLarge),

          Text('Sub-Heading', 
          style: Theme.of(context).textTheme.headlineMedium),

          Text('Paragraph', 
          style: Theme.of(context).textTheme.headlineSmall),

          ElevatedButton(onPressed: () {
            
          }, 
          child: const Text('Elevated Button')
          ),

          OutlinedButton(onPressed: () {
            
          }, 
          child: const Text('Outlined Button')
          ),

          const Padding(
            padding: EdgeInsets.all(20),
            child: Image(image: AssetImage('assets/images/messi.jpg'),
            ),
          )

        ],
      ),
      )
    );
  }
}
