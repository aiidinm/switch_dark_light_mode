import 'package:flutter/material.dart';

class SwitchCustom extends StatefulWidget {
  const SwitchCustom({super.key});

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSwitched = !isSwitched;
          });
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            //background Color
            Positioned.fill(
              left: 0,
              right: 0,
              child: Container(
                color: isSwitched ? Colors.blueGrey : Colors.white,
              ),
            ),

            //appBar

            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 60,
                color: isSwitched ? Colors.blueGrey : Colors.white,
                child: Center(
                  child: Text(
                    'S W I T C H ',
                    style: TextStyle(
                      color: isSwitched ? Colors.white : Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            //background Switch

            Positioned(
              left: 150,
              right: 150,
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      isSwitched
                          ? 'assets/images/night.png'
                          : 'assets/images/light.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),

            //bottom Switch

            Positioned(
              left: 150,
              right: 150,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 400),
                curve: Curves.easeInOut,
                alignment:
                    isSwitched ? Alignment.centerRight : Alignment.centerLeft,
                padding: EdgeInsets.all(5),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: isSwitched
                        ? Colors.blueGrey.withValues(alpha: 0.3)
                        : Colors.yellow.withValues(alpha: 0.3),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    isSwitched
                        ? 'assets/icons/moon.png'
                        : 'assets/icons/sun.png',
                  ),
                ),
              ),
            ),

            //name
            Positioned(
              bottom: 5,
              left: 0,
              child: Text(
                'Created By: aidinm',
                style: TextStyle(
                    color: isSwitched ? Colors.white : Colors.black,
                    fontSize: 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
//create By instagram: @aidinm.Dev
