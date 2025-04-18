import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/model/home_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';

class HomeCard extends StatelessWidget {
  final HomeType homeType;
  const HomeCard({super.key, required this.homeType});

  @override
  Widget build(BuildContext context) {
   // Animate.restartOnHotReload=true;
    return Card(
      color: const Color.fromARGB(255, 192, 191, 238).withOpacity(0.15),
      elevation: 0,
      margin: EdgeInsets.only(bottom: mq.height * 0.02),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18))
      ),
      child: homeType.leftAlign ? Row(
        children: [
          //lottie
          Container(
          width: mq.width * 0.4,
          height: mq.height * 0.15,
          padding: homeType.padding,
          child: Lottie.asset('assets/lottie/${homeType.lottie}',
          ),),
          //title
          Text(
            homeType.title,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              letterSpacing: 1
            ),
          ),
          const Spacer(flex: 2,),
        ],
      ) : 
      Row(
        children: [
    
          //title
          Padding(
            padding: const EdgeInsets.all(11.0),
            child: Text(
            
              homeType.title,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
                letterSpacing: 1
              ),
            ),
          ),
          const Spacer(),
          //lottie
          Container(
          width: mq.width * 0.4,
          height: mq.height * 0.15,
          padding: homeType.padding,
          child: Lottie.asset('assets/lottie/${homeType.lottie}',
          ),),
          
        ],
      ),
    ).animate().scale(duration: 2 .seconds,curve: Curves.ease);
  }
}