import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  final String title;
  final String value;
  final void Function()? addOnPressed;
  final void Function()? minOnPressed;
  const WeightAge({super.key, required this.title, required this.value, this.addOnPressed, this.minOnPressed,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: InkWell(
        child: Container(
          width: 155,
          padding: EdgeInsets.all( 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0XFF24263B),
          ),
          child: Column(
            children: [
              Text(title,
                style:TextStyle(color: Color(0XFF8B8C9E),
                    fontSize: 20),),
              Text(value,
                style:TextStyle(color: Colors.white,
                    fontSize: 40,fontWeight: FontWeight.bold),),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  FloatingActionButton.small(heroTag: "btn1$title", backgroundColor:Color(0XFF8B8C9E) ,shape:CircleBorder() ,
                    onPressed:addOnPressed,
                    child: Icon(Icons.add,color: Colors.white,),),
                  FloatingActionButton.small(heroTag: "btn2$title", backgroundColor:Color(0XFF8B8C9E) ,shape:CircleBorder() ,
                    onPressed:minOnPressed,
                    child: Icon(Icons.remove,color: Colors.white,),)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
