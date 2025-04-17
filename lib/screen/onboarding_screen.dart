import 'package:ai_assistant/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //lottie
          Lottie.asset('assets/lottie/ask-me.json',height: mq.height*.6),
          //title
          const Text(
            'Ask me Anything',
            style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: .65
            ),
          ),
          //for space
          SizedBox(height: mq.height*0.015),
          //subtitle
          SizedBox(
            width: mq.width * .7,
            child: const Text(
              'I can be your best friend and I will help you !',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15, letterSpacing: .65, color: Color.fromARGB(255, 5, 1, 20),
                
              ),
            ),
          ),
          const Spacer(),
          //dots    
          Wrap(
            spacing: 14,
            children: List.generate(2, (i)=>Container(
              width: 16, 
              height: 8,
              decoration:const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            )),
          ),
          const Spacer(),
           //button
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              elevation: 0,
              backgroundColor: const Color.fromARGB(255, 20, 4, 78),
              textStyle: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500
              ),
              minimumSize: Size(mq.width * .6, 60)
            ),
            onPressed: (){},
            child: const Text('Next',
            style: TextStyle(color: Colors.white,),
            )) , 
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}