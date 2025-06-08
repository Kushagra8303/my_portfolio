import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';


class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 12),
                child: Text(
                  "Contact Me",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(
                height: context.screenWidth < 900 ? 25 : 60,
                width: context.screenWidth < 900 ? 250 : 500,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    fillColor: Colors.grey.shade300,
                      filled: true,
                          border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,

                    )
                  ),
                )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: context.screenWidth < 900 ? 25 : 60,
                width: context.screenWidth < 900 ? 250 : 500,
                child: TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,

                          )
                      ),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
