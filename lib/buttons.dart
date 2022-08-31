import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //elevatedButton is create box button.that contain style property to style button .for disable Button just put 'null' in onPressed function.
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  //for border setting .
                  borderRadius: BorderRadius.circular(12.56),
                ),
                textStyle:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                primary: const Color.fromARGB(
                    255, 41, 7, 100), //primary color is button box color.
                onPrimary: const Color.fromARGB(
                    255, 59, 201, 177), //text color in button
                onSurface: const Color.fromARGB(255, 115, 126, 23), //
                elevation: 23,
                minimumSize: const Size(100, 100),
                maximumSize: const Size(200, 200)),
            onPressed: (() {}),
            child: Container(
              width: 100,
              height: 50,
              color: Colors.blueGrey,
              child: const Text('shop Now'),
            )),
        const SizedBox(
          height: 20,
        ),
        //============ELEVATEDBUTTON.ICON============
        //elevatedButton.Icon required two widget icon and text in button.
        ElevatedButton.icon(
            onPressed: (() {}),
            //  onHover: () {
            //    true;
            //  },
            icon: const Icon(Icons.icecream_rounded),
            label: const Text("I'M ICECream")),
        const SizedBox(
          height: 20,
        ),
        //===========OUTLINEDBUTTON===========
        //OutLinedButton() is used to crrate button with outlined border.it required onPressed function
        OutlinedButton(
            //style uses ButtonStyle class which uses materialStateProperty
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.brown),
                foregroundColor: MaterialStateProperty.all(Colors.accents[
                    12]), //accents color uses indexes less than 16 in most computers.
                fixedSize: MaterialStateProperty.all(
                    const Size(100, 50)), //for fixed button size.
                side: MaterialStateProperty.all(const BorderSide(
                    color: Colors.blueAccent,
                    width: 5.0,
                    style: BorderStyle.solid))),
            onPressed: (() {
              // ignore: avoid_print
              print("PRessed me");
            }),
            child: const Text('HEY!')),
        //===========TextButton================
        const SizedBox(
          height: 20,
        ),
        TextButton(
            style: TextButton.styleFrom(
              elevation: 4,
              backgroundColor: const Color.fromARGB(255, 164, 166, 167),
              shadowColor: const Color.fromARGB(255, 230, 15,
                  33), //when sepecifiy elevation seen shadow color.
              primary:
                  const Color.fromARGB(255, 120, 122, 5), //button text color.
            ),
            onPressed: (() {}),
            child: Text("PIKAPO")),
      ],
    );
  }
}
