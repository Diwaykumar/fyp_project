import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/Common_Artcile_page.dart';
import 'package:fyp_project/common/widgets/common_article.dart';


class SocialAnxiety extends StatefulWidget {
  const SocialAnxiety({super.key});

  @override
  State<SocialAnxiety> createState() => _SocialAnxietyState();
}

class _SocialAnxietyState extends State<SocialAnxiety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ArticlePage(
        imagePath: 'assets/article 2.jpeg',
        title: 'Financial Stress',
        additionalContent: const [
          dividerr(),



          common_text(
            text:
            "Financial stress has a way of making even the good parts of life feel precarious and difficult. And while we'd love to wave a magic wand and help us all be financially independent, that's not our area of expertise."
                " Instead, we want to help you manage the feelings and thoughts that financial stress causes, so you can feel less anxious and scared when making a plan.",
            fontSize: 17, weight: FontWeight.w500,

          ),

          dividerr(),
          common_text(text: 'Give yourself a break', fontSize: 22, weight: FontWeight.bold, textColor: Colors.blueGrey,),
          SizedBox(height: 14,),
          common_text(text: 'There are many systemic factors that can lead to financial stress, but much of the time, we find a way to only blame ourselves for our '
              'difficulties. Even when our own actions have contributed to the stress, beating ourselves up is not the way forward. Give yourself a break for the'
              ' next 5-minutes and show yourself a little self-compassion. That self-kindness is what helps us move forward.', fontSize: 15, weight: FontWeight.normal),
          dividerr(),

          common_text(text: 'A few basic starting points', fontSize: 22, weight: FontWeight.bold, textColor: Colors.blueGrey,),
          SizedBox(height: 10,),
          common_text(text: "No surprise here, but some of the best tips for managing financial stress mean getting a little uncomfortable first. We've outlined the basics, and we recommend writing them down somewhere you'll see them every day. This way, you can get used to the ideas and start putting them into practice."),
          common_text(text: 'PICTURE', fontSize: 30,),

          dividerr(),

          common_text(text: "Taking that first small step", fontSize: 22, weight: FontWeight.bold, textColor: Colors.teal,),
          common_text(text: "Getting out of financial stress starts with smail goats,"
              "It'd be nice to just find a million dollars laying around, but so far we haven't had any luck with that either, So"
              "start small, whether that's checking your account in"
              "the morning, cutting back on non-necessities, or"
              "something sise. This goal is up to you - the most important part is to kesp coming back to it."),

          common_text(text: "GOALLL", fontSize: 30,),

          Divider(),

          common_heading(text: "Kindness is free"),
          SizedBox(height: 10,),
          common_text(text: "Sometimes the hardest part of financial stress is feeling like we can't take care of the people around us in the way we wish we could. But the truth is: gift giving can be free, dates can be cheap, and self-care can be simple. It's about getting creative."),
          common_heading(text: "PICTURE KINDNESS"),
          dividerr(),

          common_heading(text: "Picture It", textColor: Colors.green,),
          common_text(text: "What does life look like when you're better with money? Find images either in your camera roll or from the internet to create a mood board and save those images here. Refer back to them for motivation."
              "Maybe it's a tropical vacation. Maybe it's just a picture of a nice cup of coffee you can enjoy guilt free when you g our finances under control. Knowing why we want to get our financial stress under control can help inspire us to make those smaller day-to-day decisions."),
          common_heading(text: 'HOPE '),

          dividerr(),

          common_heading(text: "Changing Our Habits"),
          SizedBox(
            height: 10,
          ),
          common_text(text: "Were not financial advisors, we're habit advisors. If shopping is a problem but it's also your favorite, we've got some tips that can help."),
          common_heading(text: "PICTURE"),
          SizedBox(height: 10,),
          common_heading(text: "Changing Our Mindsets", textColor: Color(0xff055B62),),
          common_text(text: 'Have you ever said, "I am bad with money?" Have you felt like there is no way out of debt? While these things can feel true, they are actually negative thought patterns we can get out of. And getting out of those thought patterns helps us change the pattern of our actions, too.'
              '\n\n Think about what your money beliefs are about yourself - and then work to change them. try it in our Beliefs exercise.'),
          SizedBox(height: 14,),

          common_heading(text: "BELEIFS THOUGTS"),

          dividerr(),

          common_heading(text: "TAKE A BREAK"),
          SizedBox(height: 10,),
          common_text(text: 'This is hard! Our finances impact nearly every corner of our lives, so facing the stress of it head on can be, well, stressful. When you notice those feelings of anxiety or depression rising to the surface, step back'
              " a moment and breathe. Your body is going into"
              "Fight, fright, or flight mode, and it's important to remind your nervous system that you're safe."),

          common_heading(text: 'MEDITATION LOGO HERE'),

          dividerr(),

          common_heading(text: "Reward yourself", textColor: Color(0xff194A1F),),

          SizedBox(height: 10,),

          common_text(text: "Good habits stick when we feel good about doing them. When you make a smart financial decision like checking your account or not buying those new shoes, be good to yourself. One of our favorite ways to do this without spending any money is to simply enjoy some music and movement. We've got a playlist we love for being excited about the future. Give it a try."),

          dividerr(),

          common_heading(text: "It Takes Time"),
          SizedBox(height: 8,),

          common_text(text: "Moving through financial stress isn't something that gets done in a day. It takes time, and it helps to have a little confidence in yourself that you can do it. If that's something you'd like to work on, we've got a Journey for you."),
          SizedBox(height: 14,),
          common_heading(text: 'Guided Journey pic here '),

          common_text(text: 'Financial stress affects hundreds of millions of people. You are not alone. If you need additional help, the Empathia Care Team is a tap away.')


        ],
      ),
    );
  }
}
