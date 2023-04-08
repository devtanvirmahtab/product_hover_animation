import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
      body: Center(child: HoverCard()),
    );
  }
}

class HoverCard extends StatefulWidget {
  const HoverCard({Key? key}) : super(key: key);

  @override
  State<HoverCard> createState() => _HoverCardState();
}

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value){
        setState(() {
          isHovered = true;
        });
      },
      onExit: (value){
        setState(() {
          isHovered = false;
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          height: 420,
          width: 320,
          decoration: BoxDecoration(
            color: const Color(0xFF242324),
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Stack(
            children: [
              Positioned(
                left: -5,
                top: 150,
                child: Text('Nike',style:GoogleFonts.montserrat(
                  fontWeight: FontWeight.w900,
                  fontSize: 130.0,
                  color: Colors.white10,
                ),
                softWrap: false,
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 475),
                curve: Curves.easeOut,
                top:isHovered ?-240 :-80 ,
                right:isHovered ?-100 :-80 ,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 475),
                  curve: Curves.easeOut,
                  height: isHovered ? 450 :280,
                  width: isHovered ? 450 :280,
                  decoration: BoxDecoration(
                    color:  Colors.amber,
                    borderRadius: BorderRadius.circular(400),
                  ),
                ),
              ),
              AnimatedAlign(
                duration: const Duration(milliseconds: 375),
                alignment: isHovered ? const  Alignment(0.0, -0.8) :const  Alignment(0.0, -0.2),
                child: SizedBox(
                  height: 220,
                  width: 320,
                  child: Image.asset("assets/images/shoes.png"),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 757),
                curve: Curves.easeOut,
                bottom: isHovered ? 0.0 : -100.0,
                child: SizedBox(
                  width: 320,
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Nike Shoes',
                        style:GoogleFonts.montserrat(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                        softWrap: false,
                      ),
                      const SizedBox(height:5.0),
                      AnimatedOpacity(
                        duration:  Duration(milliseconds: isHovered ? 977 : 577 ),
                        opacity: isHovered ? 1.0 : 0.0,
                        curve: isHovered ?  Curves.easeInOutBack : Curves.easeOut,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('SIZE : ',
                              style:GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizeButton(text: '7'),
                            const SizeButton(text: '8'),
                            const SizeButton(text: '9'),
                            const SizeButton(text: '10'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      AnimatedOpacity(
                        duration:  Duration(milliseconds: isHovered ? 977 : 577 ),
                        opacity: isHovered ? 1.0 : 0.0,
                        curve: Curves.easeInOutBack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Color : ',
                              style:GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                            const CircleAvatar(backgroundColor: Colors.red,radius: 9,),
                            const SizedBox(width:10),
                            const CircleAvatar(backgroundColor: Colors.green,radius: 9,),
                            const SizedBox(width:10),
                            const CircleAvatar(backgroundColor: Colors.amber,radius: 9,),
                            const SizedBox(width:10),
                            const CircleAvatar(backgroundColor: Colors.blue,radius: 9,),
                            const SizedBox(width:10),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration:isHovered ? const Duration(milliseconds: 900) : const Duration(milliseconds: 500),
                curve: isHovered ?  Curves.easeIn : Curves.easeOut,
                bottom: isHovered? 20 : -100.0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1000),
                  opacity: isHovered ? 1.0 : 0.0,
                  child: SizedBox(
                    width: 320.0,
                    child: Center(
                      child: TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding:const  EdgeInsets.all(20.0),
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)
                          )
                        ),
                          child:  Text( 'Buy Now', style:GoogleFonts.montserrat(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600
                          )),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SizeButton extends StatefulWidget {
  final String? text;
  const SizeButton({Key? key, this.text}) : super(key: key);

  @override
  State<SizeButton> createState() => _SizeButtonState();
}

class _SizeButtonState extends State<SizeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: MouseRegion(
        onEnter: (value){
          setState(() {
            isHovered = true;
          });
        },
        onExit: (value){
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 475),
          height: 30,
          width: 30,
          curve: Curves.easeOut,
          decoration: BoxDecoration(
            color: isHovered ? const Color(0xFF0091DE): Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
              child: Text(
                  widget.text!,
                style:GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: isHovered ? Colors.white : Colors.black87,
                ),
              )),
        ),
      ),
    );
  }
}

