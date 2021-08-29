import 'package:ecommerce/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffFF3759),
            Color(0xffFF3E59),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 80,
              child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.white)),
                  child: Image.asset(
                    'assets/icon/startSceenlogo.png',
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                'Seller.pk',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: 'FredokaOne-Regular',
                    color: Colors.white,
                    fontSize: 40),
              ),
            )
          ]),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  showMaterialModalBottomSheet(
                      context: context, builder: (context) => UserData());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(color: Color(0xffFF3759), fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  'SIGN IN',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
