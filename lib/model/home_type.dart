import 'package:flutter/widgets.dart';
enum HomeType {aiChatbot,aiImage,aiTranslate}

extension MyHomeType on HomeType{
  //title
  String get title => switch(this){
    HomeType.aiChatbot=> 'AI Chatbot',
    HomeType.aiImage=> 'AI Image Creator',
    HomeType.aiTranslate=> 'Language Translator',
  };

  //lottie
  String get lottie => switch(this){
    HomeType.aiChatbot=> 'chat.json',
    HomeType.aiImage=> 'drawing.json',
    HomeType.aiTranslate=> 'translate.json',
  };

  //for alignment
  bool get leftAlign => switch(this){
    HomeType.aiChatbot=> true,
    HomeType.aiImage=> false,
    HomeType.aiTranslate=> true,
  };

  //for padding
  EdgeInsets get padding => switch(this){
    HomeType.aiChatbot=> EdgeInsets.zero,
    HomeType.aiImage=> const EdgeInsets.all(5),
    HomeType.aiTranslate=> const EdgeInsets.all(2),
  };

}