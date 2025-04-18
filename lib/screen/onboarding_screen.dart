import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/model/onboard.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c=PageController();
    final list=[
      //onboarding 1
      Onboard(
        title: 'Ask me Anything', subtitle: 'I can be your best friend and I will help you !', lottie: 'ask-me'),
        //onboarding 2
        Onboard(
          title: 'Imagination to Reality', subtitle: 'Just tell me , I will create something awesome!', lottie: 'hai')
    ];
    return Scaffold(
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder: (ctx, ind){
          final isLast = ind==list.length -1;
        return Column(
        children: [
          //lottie
          Lottie.asset('assets/lottie/${list[ind].lottie}.json',height: mq.height*.6),
          //title
          Text(
            list[ind].title,
            style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: .65
            ),
          ),
          //for space
          SizedBox(height: mq.height*0.015),
          //subtitle
          SizedBox(
            width: mq.width * .7,
            child: Text(
              list[ind].subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15, letterSpacing: .65, color: Color.fromARGB(255, 5, 1, 20),
                
              ),
            ),
          ),
          const Spacer(),
          //dots    
          Wrap(
            spacing: 14,
            children: List.generate(list.length, (i)=>Container(
              width: i==ind ?  20 : 16 , 
              height: 8,
              decoration:BoxDecoration(
                color: i==ind ? Colors.blue :Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(5))),
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
            onPressed: (){
              if(isLast){
                Get.off(()=>const HomeScreen());
                //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>const HomeScreen()));
              }
              else{
                c.nextPage(duration: const Duration(milliseconds: 700), curve: Curves.ease);
              }
            },
            child: Text(
              isLast ? 'Finish' : 'Next',
            style: const TextStyle(color: Colors.white,),
            )) , 
          const Spacer(flex: 2),
        ],
      );
      })
    );
  }
}