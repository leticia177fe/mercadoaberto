import 'package:flutter/material.dart';

class textoCEP extends StatefulWidget {
  textoCEP({ Key? key }) : super(key: key);

  @override
  _textoCEPState createState() => _textoCEPState();
}

class _textoCEPState extends State<textoCEP> {

  String textoCep = "";

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Icon(Icons.location_on_outlined),

                GestureDetector(
                  onTap: () => {
                  setState(() => {
                    textoCep = "17511800 - Avenida Paulista"
                    })
                    },
            
                  child: Text("Enviar para ${textoCep}",
                  style: TextStyle(fontSize: 12),
              
                  ),
                ),

            ],

        );
  }
}      