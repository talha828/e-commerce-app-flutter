import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class UserData extends StatefulWidget {
  @override
  _UserDataState createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    Expanded(
                      child: Container(
                        height: 70,
                        width: 70,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image(
                            image: AssetImage(
                              'assets/icon/startSceenlogo.png',
                            ),
                            color: Color(0xffFF3759),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color:Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text('Sign Up',style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color:  Color(0xffFF3759),
                        ),),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor:Colors.grey[300],
                          alignLabelWithHint: true,
                          labelText: 'Enter Name',
                          hintText: 'Talha',
                          hintStyle: TextStyle(
                            color: Colors.grey
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor:Colors.grey[300],
                          alignLabelWithHint: true,
                          labelText: 'Enter Email',
                          hintText: 'talhaiqbal246@gmail.com',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor:Colors.grey[300],
                          alignLabelWithHint: true,
                          labelText: 'Enter Mobil',
                          hintText: '+923012070920',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor:Colors.grey[300],
                          alignLabelWithHint: true,
                          labelText: 'Enter Password',
                          hintText: '*********',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor:Colors.grey[300],
                          alignLabelWithHint: true,
                          labelText: 'Confirm Password',
                          hintText: '*********',
                          hintStyle: TextStyle(
                              color: Colors.grey
                          ),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: MediaQuery.of(context).size.width / 2,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xffFF3759),
                                  Color(0xffFF3E59),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                            child: Text(
                              'Next',
                              style: TextStyle(color:Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
