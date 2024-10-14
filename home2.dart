//import 'package:add_product/inputfields.dart';

import 'package:add_product/footer_menu.dart';
import 'package:add_product/styled_body_text.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget({super.key});

  @override
  State<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();
  String text = "";
  @override
  void dispose() {
    super.dispose();
    controller.dispose();

  }
  void changeText(text){
    setState((){
      this.text = text;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(30),
      child: TextField(
      controller: this.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Edit Product Name"
    ),
    onChanged: (text) => this.changeText(text),
    )),
    Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(30),
      child: TextField(
      controller: this.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Edit Product Brand"
    ),
    onChanged: (text) => this.changeText(text),
    ),
    ),
    Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(30),
      child: TextField(
      controller: this.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Edit Product Brand"
    ),
    onChanged: (text) => this.changeText(text),
    ),
    ),
    Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(30),
      child: TextField(
      controller: this.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Edit Product Quantity"
    ),
    onChanged: (text) => this.changeText(text),
    ),
    ),
    Container(
      color: Colors.blue,
      padding: const EdgeInsets.all(30),
      child: TextField(
      controller: this.controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
      prefixIcon: Icon(Icons.message), labelText: "Edit Use By Date"
    ),
    onChanged: (text) => this.changeText(text),
    ),
    ),
    /*Expanded(
      child: Image.asset('assets/lolbaguette.jpg', 
      fit: BoxFit.fitWidth,
      alignment: Alignment.bottomCenter,
      color: Colors.amber,
      colorBlendMode: BlendMode.multiply),
    ),*/
    ]


    );
  }
}

class StyledBodyText2 extends StatelessWidget {
  const StyledBodyText2(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: 
      const TextStyle(
        color: Colors.white, 
        fontWeight: FontWeight.bold, 
        fontSize: 9

      )

    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});
  /*void onPressed(String message){
    print("page changed to " + message); 
  }*/
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 250, 
      height: 25,
      child: Row(
      children: [
        SizedBox(
          width: 100, 
          height: 50,
          child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.blue,

          ),
          onPressed: () {},
          child: const StyledBodyText2("My Pantry"))),
        SizedBox(
          width: 100, 
          height: 50,
          child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.blue,

          ),
          onPressed: () {},
          child: const StyledBodyText2("Shopping List"))),
        SizedBox(
          width: 100, 
          height: 50,
          child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.blue,

          ),
          onPressed: () {},
          child: const StyledBodyText2("Add Product"))),
        SizedBox(
          width: 100, 
          height: 50,
          child: FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.blue,

          ),
          onPressed: () {},
          child: const StyledBodyText2("Settings")))

      ],)
    );
  }
}

class EditProduct extends StatelessWidget {
  const EditProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const StyledBodyText('Edit A Product'),
        backgroundColor: Colors.black,
        centerTitle: true,

      ),
      resizeToAvoidBottomInset: false,
      body: const TextInputWidget(),
      bottomNavigationBar: CommonFooterMenu(context).getFooterMenu(3),
      //drawer: const TextInputWidget2()

    );
  }
}
      /*const Column(
        children: [
          InputFields()
        ],)*/
      /*Container(
        color: Colors.orange,
        //width: 200,
        //height: 100,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
        child: const Text('Hello, ninjas', style: TextStyle(
          fontSize: 18, 
          letterSpacing: 4, 
          decoration: TextDecoration.underline, 
          fontStyle: FontStyle.italic
        )),

      )*/

