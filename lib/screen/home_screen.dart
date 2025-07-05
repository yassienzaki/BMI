import 'dart:math';

import 'package:first_app/screen/result_screen.dart';
import 'package:first_app/theme/app_colour.dart';
import 'package:first_app/weight_age.dart';
import 'package:first_app/widgets/custom_app_bar.dart';
import 'package:first_app/widgets/gender_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
  class  HomeScreen extends StatefulWidget {
    const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
bool isMale=true;
int height=100;
int weight=20;
int age=20;
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor:AppColors.backgroundColor,
      bottomNavigationBar: InkWell(
        onTap:(){
          Navigator.push(context, MaterialPageRoute(builder:(context)=> ResultScreen(
            result: weight / pow(height / 100, 2),

          )));
        },
        child: Container(
          height: 100,
          alignment: Alignment.center,
          color: Color(0XFFE83D67),
          child: Text("Calculate",style:TextStyle(fontSize: 32,
          fontWeight:FontWeight.bold,color: Colors.white ) ,),
        ),
      ),
        appBar:CustomAppBar() ,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 26
          ),
          child: SingleChildScrollView(
            child: Column(

              children: [
             // select gender row
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Expanded(
                       child:GenderContainer(
                         isActive: isMale,
                     onTap: (){
                   if(!isMale){
                    setState(() {
                   isMale = true;
                    });
                   }
                     },
                     title: "Male",
              svgIcon: "assets/images/male_icon.svg",

                   ) ),

                   SizedBox(width: 20),

                   Expanded(
                       child: GenderContainer(
                         isActive:!isMale,
                   onTap: (){
                           setState(() {

                           });
                     isMale=false;
                   },
                     title: "Female",
                 svgIcon: "assets/images/female_icon.svg",

               )),

                 ],
               ),
                SizedBox(height: 25,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 27,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0XFF333244),
                  ),
                  child: Column(

                    children: [
                      Text("Height",style:TextStyle(
                        fontSize: 20,color: Colors.white,
                      ),),
                      Text.rich(
                        TextSpan(
                          children:[ TextSpan(text: height.toString(),style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          )),

                                    TextSpan(text: "cm",style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white)),
                ]
                        )
                      ),
                     Slider(min: 0,
                         max: 200,
                         activeColor:Color(0XFFE83D67),
                         value:height.toDouble(), onChanged: (v){
                       setState(() {

                       });
                       height=v.toInt();
                         })
                    ],
                  ),
                ),
                SizedBox(height: 20),
               Row(
                 children: [
                   Expanded(
                   child: WeightAge(minOnPressed: (){
                     if(weight>0){
                       setState(() {
                         weight--;
                       });
                     }
                   },addOnPressed: (){
                     setState(() {
                       weight++;
                     });
                   },title: "weight",value:weight.toString(),)),

                    SizedBox(width: 9,),

                   Expanded(child: WeightAge(
                     addOnPressed: (){
                       setState(() {
                         age++;
                       });

                     },
                     minOnPressed: (){
                       if(age>0){
                         setState(() {
                           age--;
                         });
                       }
                     }
                     ,title: "Age",value:age.toString(),)),
                 ],
               )
              ],
            ),
          ),
        ),

      );
    }
}



