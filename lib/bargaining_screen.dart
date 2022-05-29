// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class BargainingApp extends StatefulWidget {
  const BargainingApp({Key? key}) : super(key: key);

  @override
  State<BargainingApp> createState() => _BargainingAppState();
}

class _BargainingAppState extends State<BargainingApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Current Fare",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 50,
                width: 80,
                child: OutlinedButton(
                  child: Center(
                    child: Text(
                      '-5',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      Color _Color;
                      if (states.contains(MaterialState.disabled)) {
                        _Color = Colors.greenAccent;
                      } else if (states.contains(MaterialState.hovered)) {
                        _Color = Colors.white;
                      } else {
                        _Color = Colors.black;
                      }
                      return _Color;
                    }),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                    ),
                    side: MaterialStateProperty.resolveWith((states) {
                      Color _borderColor;
                      if (states.contains(MaterialState.disabled)) {
                        _borderColor = Colors.greenAccent;
                      } else if (states.contains(MaterialState.pressed)) {
                        _borderColor = Colors.yellow;
                      } else {
                        _borderColor = Colors.black;
                      }
                      return BorderSide(color: _borderColor, width: 1);
                    }),
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.green;
                      }
                      return Colors.white;
                    }),
                  ),
                  onPressed: () {},
                ),
              ),
              Text(
                "60",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
                width: 80,
                child: OutlinedButton(
                  child: Center(
                    child: Text(
                      '+5',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.resolveWith((states) {
                      Color _Color;
                      if (states.contains(MaterialState.disabled)) {
                        _Color = Colors.greenAccent;
                      } else if (states.contains(MaterialState.hovered)) {
                        _Color = Colors.white;
                      } else {
                        _Color = Colors.white;
                      }
                      return _Color;
                    }),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(18),
                        ),
                      ),
                    ),
                    side: MaterialStateProperty.resolveWith((states) {
                      Color _borderColor;
                      if (states.contains(MaterialState.disabled)) {
                        _borderColor = Colors.greenAccent;
                      } else if (states.contains(MaterialState.pressed)) {
                        _borderColor = Colors.yellow;
                      } else {
                        _borderColor = Colors.black;
                      }
                      return BorderSide(color: _borderColor, width: 1);
                    }),
                    backgroundColor:
                        MaterialStateProperty.resolveWith<Color>((states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.white;
                      }
                      return Colors.green;
                    }),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          SizedBox(
          height: 50,
          width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        color: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        textColor: Colors.white,
        child: Text(
          "Raise Fare",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),),),
        ]
      )
    );
  }
}
