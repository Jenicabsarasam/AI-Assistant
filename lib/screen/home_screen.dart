import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/helper/pref.dart';
import 'package:ai_assistant/widget/home_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding=false;
  }
  @override
  Widget build(BuildContext context) {
    //Initializing device size
    mq=MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          appName,
          style: TextStyle(
            color: Color.fromARGB(255, 19, 88, 145),fontSize: 20,fontWeight: FontWeight.w500
          ),
        ),
        //actions
        actions: [
          IconButton(
            padding: const EdgeInsets.only(right: 10),
            onPressed: (){},
            icon: const Icon(
              Icons.brightness_4_rounded,
              color: Color.fromARGB(255, 4, 63, 110),
              size: 26,
            ))
        ],

      ),
      //body
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: mq.width * 0.04,
          vertical: mq.height * 0.04
          ),
        children: const [HomeCart()],
      ),
    );
  }
}