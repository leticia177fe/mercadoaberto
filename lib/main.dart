
import 'package:flutter/material.dart';
import 'package:mercado_aberto/components/campo_pesquisa.dart';
import 'package:mercado_aberto/components/card_assinatura.dart';
import 'package:mercado_aberto/components/card_frete_gratis.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: const Color(0xfff5d415),

        leading: const Icon(
          Icons. menu,
          color: Colors.black,
      ),

          title: CampoPesquisa(),

        actions: [
          Container(
            padding: const EdgeInsets.all(5.0),
            child: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          ),
          ],

       bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                Icon(Icons.location_on_outlined),
                Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56",
                style: TextStyle(fontSize: 12),
              
                ),

            ],

        ),

      )

    ),
    
    body: Center(
        child: Container(
          padding: EdgeInsets.only(right: 25, left: 25,),
          decoration: const BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color(0xfff5d415),
            Color(0xfff5f5f5),
          ],

      ),

     ), 
       
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              padding: const EdgeInsets.all(3), 
              height: 140,
              child: Image.network(
                'https://http2.mlstatic.com/D_NQ_NP650326-MLA50239834698_062022-B.jpg',
              ),

            ),
            
          CardAssinatura(titulo:"Assine o nível 6 por R\$ 9,90/mês!"),

          CardFrete(titulo:"Frete grátis",),

          ],
        
        ),

      ),

    )

  );

}

}