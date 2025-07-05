import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderContainer extends StatelessWidget {
  final String svgIcon;
  final String title;
  final bool isActive;
  final void Function()? onTap;
  const GenderContainer({super.key,required this.title,required this.svgIcon, this.isActive=false, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(

          padding: EdgeInsets.symmetric(
              horizontal:10,
              vertical: 17
          ),
      
          decoration:BoxDecoration(
              color:isActive?Color(0XFFE83D67):Color(0XFF24263B),

              borderRadius: BorderRadius.circular(12),
      
          ) ,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgIcon),
              Text(title,style:TextStyle(
                  fontSize: 20,
                  color: Colors.white
              ) ,)
            ],
          )
      ),
    );
  }
}
