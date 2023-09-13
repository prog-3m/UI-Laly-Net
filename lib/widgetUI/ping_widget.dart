import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/theams.dart';

class PingWidget extends StatelessWidget {
  const PingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Write Number of request:'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child:
                  const SizedBox(width: 50, child: Center(child: Text(' 5 '))),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Divider(),
        const SizedBox(height: 10),
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           Container(
        //             decoration: BoxDecoration(
        //               border: Border.all(),
        //               borderRadius: BorderRadius.all(
        //                 Radius.circular(10),
        //               ),
        //             ),
        //             child:
        //                 IconButton(onPressed: () {}, icon: Icon(Icons.router)),
        //           ),
        //           Text('Router'),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           IconButton(onPressed: () {}, icon: Icon(Icons.g_mobiledata)),
        //           Text('Google'),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           IconButton(onPressed: () {}, icon: Icon(Icons.dns_outlined)),
        //           Text('8.8.8.8'),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           IconButton(
        //               onPressed: () {},
        //               icon: Icon(
        //                 CupertinoIcons.play_rectangle_fill,
        //                 color: Colors.red,
        //               )),
        //           Text('youtube'),
        //         ],
        //       ),
        //     ),
        //     Expanded(
        //       flex: 1,
        //       child: Column(
        //         children: [
        //           IconButton(onPressed: () {}, icon: Icon(Icons.router)),
        //           Text('1.1.1.1'),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
        const IconRow(),
        const SizedBox(height: 15),
        const Text('Or'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              color: elembg,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Type Your Id Addres'),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5),
                        ),
                        color: secbtn,
                      ),
                      child: const Center(child: Text('ping')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                nameRoute('seq:5', 'ip:876.854.765', 'time:213ms'),
                nameRoute('seq:4', 'ip:876.854.765', 'time:213ms'),
                nameRoute('seq:3', 'ip:876.854.765', 'time:213ms'),
                nameRoute('seq:2', 'ip:876.854.765', 'time:213ms'),
                nameRoute('seq:1', 'ip:876.854.765', 'time:213ms'),

                // Additional nameRoute widgets can be added here
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget nameRoute(txt1, txt2, txt3) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(txt1),
          Text(txt2),
          Text(txt3),
        ],
      ),
    );
  }
}

class IconRow extends StatefulWidget {
  const IconRow({super.key});

  @override
  State<IconRow> createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> {
  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIcon = 0;
              });
            },
            child: Column(
              children: [
                buildResponsiveContainer(
                    selectedIcon, 0, Icons.router, Colors.black),
                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     color: elembg,
                //     border: Border.all(
                //       color:
                //           selectedIcon == 0 ? Colors.black : Colors.transparent,
                //     ),
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: const Icon(Icons.router),
                // ),

                Text('Router',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIcon = 1;
              });
            },
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: screenWidth < 600
                        ? 40
                        : screenWidth < 1200
                            ? 50
                            : 60,
                    decoration: BoxDecoration(
                      color: elembg,
                      border: Border.all(
                        color: selectedIcon == 1
                            ? Colors.black
                            : Colors.transparent,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (Rect bounds) => const RadialGradient(
                        center: Alignment.topCenter,
                        stops: [.8, 1],
                        colors: [
                          Colors.red,
                          Colors.blue,
                          // Colors.yellow,
                        ],
                      ).createShader(bounds),
                      child: const Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),
                    )),
                Text('Google',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIcon = 2;
              });
            },
            child: Column(
              children: [
                buildResponsiveContainer(
                    selectedIcon, 2, Icons.language, main2),
                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     color: elembg,
                //     border: Border.all(
                //       color:
                //           selectedIcon == 2 ? Colors.black : Colors.transparent,
                //     ),
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: Icon(
                //     Icons.language,
                //     color: main2,
                //   ),
                // ),

                Text('8.8.8.8',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIcon = 3;
              });
            },
            child: Column(
              children: [
                buildResponsiveContainer(selectedIcon, 3,
                    CupertinoIcons.play_rectangle_fill, Colors.red),
                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     color: elembg,
                //     border: Border.all(
                //       color:
                //           selectedIcon == 3 ? Colors.black : Colors.transparent,
                //     ),
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: const Icon(
                //     CupertinoIcons.play_rectangle_fill,
                //     color: Colors.red,
                //   ),
                // ),
                Text('youTube',
                    style: TextStyle(
                      letterSpacing: 0,
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIcon = 4;
              });
            },
            child: Column(
              children: [
                buildResponsiveContainer(
                    selectedIcon, 4, Icons.language, main2),
                // Container(
                //   height: 40,
                //   width: 40,
                //   decoration: BoxDecoration(
                //     color: elembg,
                //     border: Border.all(
                //       color:
                //           selectedIcon == 4 ? Colors.black : Colors.transparent,
                //     ),
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(10),
                //     ),
                //   ),
                //   child: Icon(
                //     Icons.language,
                //     color: main2,
                //   ),
                // ),

                Text('1.1.1.1',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildResponsiveContainer(int selectedIcon, int selected, icon, color) {
    return Container(
      height: _calculateContainerSize(context),
      width: _calculateContainerSize(context),
      decoration: BoxDecoration(
        color: elembg,
        border: Border.all(
          color: selectedIcon == selected ? Colors.black : Colors.transparent,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Icon(
        icon,
        //CupertinoIcons.play_rectangle_fill,
        color: color,
      ),
    );
  }

  double _calculateContainerSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // Calculate the desired container size based on your responsive logic
    // You can adjust the values below to fit your specific requirements
    if (screenWidth < 600) {
      return 40;
    } else if (screenWidth < 1200) {
      return 50;
    } else {
      return 60;
    }
  }
}
