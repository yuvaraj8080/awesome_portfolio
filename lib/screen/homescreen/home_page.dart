import 'package:auto_size_text/auto_size_text.dart';
import 'package:awesome_portfolio/consts/data.dart';
import 'package:awesome_portfolio/providers/current_state.dart';
import 'package:awesome_portfolio/providers/theme_provider.dart';
import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../consts/images_labels.dart';
import '../../widgets/frosted_container.dart';
import '../../widgets/rain_cloud.dart';
import 'phone_screen_wrapper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider theme = Provider.of<ThemeProvider>(context, listen: false);
    CurrentState currentState =
        Provider.of<CurrentState>(context, listen: false);
    Size size = MediaQuery.of(context).size;
    theme.size = MediaQuery.of(context).size;
    theme.widthRatio = theme.size.width / baseWidth;
    theme.heightRatio = theme.size.height / baseHeight;
    bool phone = false;
    if (size.width < 800) {
      phone = true;
    }

    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, Gradient>(
            selector: (context, provider) => provider.bgGradient,
            builder: (context, _, __) {
              return Container(
                decoration: BoxDecoration(gradient: currentState.bgGradient),
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: false,
                  top: 300,
                )
              : Container(),
          Selector<CurrentState, String>(
            selector: (context, provider) => provider.selectedCloud,
            builder: (context, _, __) {
              return SvgPicture.asset(
                currentState.selectedCloud,
                // width: double.infinity,
                height: size.height,
                fit: BoxFit.cover,
              );
            },
          ),
          size.height > 600
              ? const Rain(
                  oposite: true,
                  top: 50,
                )
              : Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Left side frosted Containers

                  phone
                      ? Container()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(-0.06),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                margin: EdgeInsets.only(
                                    top: 0, bottom: 10 * theme.heightRatio),
                                child: FrostedWidget(
                                  childW: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: GridView.builder(
                                      padding:const EdgeInsets.all(10),
                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:3, // 2 columns
                                        childAspectRatio:1.1, // square items
                                      ),
                                      itemCount: gridViewItems.length, // number of items
                                      itemBuilder: (context, index) {
                                        return gridViewItems[index];
                                      },
                                    )
                                  ),
                                  height: 395 * theme.heightRatio,
                                  width: 240.5 * theme.widthRatio,
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.009999)
                                ..rotateY(-0.07),
                              alignment: Alignment.topCenter,
                              child:  FrostedWidget(
                                childW: Column(
                                  children:[
                                   const   Text("Connect With Me",style:TextStyle(fontWeight:FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                                        children: [
                                        GestureDetector(onTap:()=> currentState.launchInBrowser(toLinkdin),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/linakdin.png"))),
                                        GestureDetector(onTap:()=> currentState.launchInBrowser(toGithub),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/github.png"))),
                                        GestureDetector(onTap:()=> currentState.launchInBrowser(toInstagram),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/insata.png"))),
                                      ],),
                                    ),
                                    const SizedBox(height:5),
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceAround,
                                        children: [
                                          GestureDetector(onTap:()=> currentState.launchInBrowser(Fiverr),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/linakdin.png"))),
                                          GestureDetector(onTap:()=> currentState.launchInBrowser(toGithub),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/github.png"))),
                                          GestureDetector(onTap:()=> currentState.launchInBrowser(toInstagram),child:const CircleAvatar(backgroundImage:AssetImage("assets/icons/insata.png"))),
                                        ],),
                                    )
                                  ],
                                ),
                              )
                            ),
                          ],
                        ),

                  // main mobile screen
                  SizedBox(
                    height: size.height - 100,
                    child: Consumer<CurrentState>(
                      // selector: (context, provider) => provider.currentDevice,
                      builder: (context, _, __) {
                        return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: Container(
                              decoration: BoxDecoration(
                                  gradient: currentState.bgGradient),
                              child: ScreenWrapper(
                                  childG: currentState.currentScreen)),
                        );
                      },
                    ),
                  ),

                  /// Right side frosted containers
                  phone
                      ? Container()
                      : Column(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.01)
                                ..rotateY(0.06),
                              alignment: Alignment.bottomCenter,
                              child: FrostedWidget(
                                height: 410 * theme.heightRatio,
                                width: 247.5 * theme.widthRatio,
                                childW: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      AutoSizeText("Experience",
                                        style: GoogleFonts.inter(
                                          // fontSize: 30,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w600),
                                        maxFontSize: 30,
                                        minFontSize: 15,
                                        maxLines: 3,
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '1) Working In Reidius Infra & Chemisphere as flutter intern',
                                            style: GoogleFonts.inter(
                                                fontSize:10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),

                                      const SizedBox(height:6),

                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '2) I Have Developed 20+ App Using Flutter Technology',
                                            style: GoogleFonts.inter(
                                                fontSize:10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),

                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '3)Which Include Social Helpful, Safety, Tflite, Education,AI/Ml and  Business Apps',
                                            style: GoogleFonts.inter(
                                                fontSize:10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),

                                      const SizedBox(height:6),

                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '4) Over the past 2 years focus on App Development',
                                            style: GoogleFonts.inter(
                                                fontSize:10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),

                                      const SizedBox(height:6),

                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '5) I Have Published 3 apps on play store',
                                            style: GoogleFonts.inter(
                                                 fontSize: 10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),

                                      const SizedBox(height:6),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child:Text(
                                            '6) MY App solved  Real word problem, and using 100+ users ',
                                            style: GoogleFonts.inter(
                                                fontSize:10,
                                                color: Colors.black,
                                                fontWeight:
                                                FontWeight.w700),
                                            maxLines:4,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Transform(
                              transform: Matrix4.identity()
                                ..setEntry(3, 2, 0.00999)
                                ..rotateY(0.06),
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin:
                                    const EdgeInsets.only(top: 0, bottom: 10),
                                child: FrostedWidget(
                                  childW: Center(
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      padding:
                                          EdgeInsets.all(10 * theme.widthRatio),
                                      child: Wrap(
                                        children: [
                                          ...List.generate(
                                            colorPalette.length,
                                                (index) => Consumer<CurrentState>(
                                                builder: (context, _, __) {
                                                  return CustomButton(
                                                    margin: const EdgeInsets.all(8),
                                                    pressed:
                                                    currentState.selectedColor ==
                                                        index
                                                        ? Pressed.pressed
                                                        : Pressed.notPressed,
                                                    animate: true,
                                                    borderRadius: 100,
                                                    shadowColor: Colors.blueGrey[50],
                                                    isThreeD: true,
                                                    backgroundColor:
                                                    colorPalette[index].color,
                                                    width:40 * theme.widthRatio,
                                                    height:40 * theme.widthRatio,
                                                    onPressed: () {
                                                      currentState.changeGradient(index);
                                                    },
                                                  );
                                                }),
                                          )
                                        ],
                                      ),
                                    ),
                                  ).animate().fadeIn(
                                      delay: 1.seconds, duration: .7.seconds),
                                  height: 175.5 * theme.heightRatio,
                                  width: 245 * theme.widthRatio,
                                ),
                              ),
                            ),
                          ],
                        ),
                ],
              ),
              SizedBox(
                height: 10 * theme.heightRatio,
              ),

              /// bottom button for device selection
              Selector<CurrentState, DeviceInfo>(
                  selector: (context, p1) => p1.currentDevice,
                  builder: (context, _, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...List.generate(devices.length, (index) {
                          return CustomButton(
                            pressed: currentState.currentDevice ==
                                    devices[index].device
                                ? Pressed.pressed
                                : Pressed.notPressed,
                            animate: true,
                            borderRadius: 100,
                            isThreeD: true,
                            backgroundColor: Colors.black,
                            width: 37.5,
                            height: 37.5,
                            onPressed: () {
                              currentState.changeSelectedDevice(
                                devices[index].device,
                              );
                            },
                            child: Center(
                              child: Icon(
                                devices[index].icon,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          );
                        })
                      ],
                    );
                  })
            ],
          ),
        ],
      ),
    );
  }
}
