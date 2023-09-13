import 'package:flutter/material.dart';

import '../constant/theams.dart';

class CircularProgressIndicatorWithIcon extends StatefulWidget {
  final IconData icon;
  final double progress;

  const CircularProgressIndicatorWithIcon({
    super.key,
    required this.icon,
    required this.progress,
  });

  @override
  State<CircularProgressIndicatorWithIcon> createState() =>
      _CircularProgressIndicatorWithIconState();
}

class _CircularProgressIndicatorWithIconState
    extends State<CircularProgressIndicatorWithIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _isLoading = false;
  bool loading = false;
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.linear,
      ),
    );

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _isLoading = false;
          _isIconBig = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startLoading() {
    setState(() {
      _isLoading = true;
    });

    _animationController.reset();
    _animationController.forward();
  }

//////////////////////icon animation
  bool _isIconBig = false;

  void _toggleIconSize() {
    if (!_isIconBig) {
      _animationController.forward().then((_) {
        _animationController.forward();
      });
    }

    _isIconBig = !_isIconBig;
  }

  @override
  Widget build(BuildContext context) {
    var ten = (_animation.value * 100).toInt();
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // if (_isLoading)

            Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    boxShadow: [
                      _isLoading
                          ? BoxShadow(
                              color: navbg,
                              offset: const Offset(1, 1),
                              blurRadius: 10)
                          : const BoxShadow()
                    ],
                    color: _isLoading ? Colors.white : mainbg,
                    border: Border.all(
                        width: 3, color: _isLoading ? Colors.white : main2),
                    borderRadius: BorderRadius.circular(150)),
                child: _isLoading
                    ? AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          // final progressValue =
                          //     (_animation.value * 100).toInt();
                          return CircularProgressIndicator(
                            strokeWidth: 4,
                            color: bg,
                            value: _animation.value,
                          );
                        },
                      )
                    : null),
            // CircularProgressIndicator(
            //   value: progress / 100,
            // ),
            _isIconBig
                ? AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _animation.value,
                        child: Icon(
                          widget.icon,
                          size: 48.0,
                          color: Colors.black,
                        ),
                      );
                    },
                  )
                : Icon(
                    widget.icon,
                    size: 50,
                    color: Colors.white,
                  ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: main2),
                backgroundColor: mainbg,
              ),
              onPressed: () {
                _startLoading();
                _toggleIconSize();
              },
              child: Text(
                _isLoading ? 'Checking...' : 'Start Checking',
                style: TextStyle(
                  fontSize: _calculateFontSize(),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                side: BorderSide(color: main2),
                backgroundColor: main2,
              ),
              onPressed: () {
                _startLoading();
                _toggleIconSize();
                setState(() {
                  loading = true;
                });
              },
              icon: const Icon(
                Icons.online_prediction,
                color: Colors.white,
              ),
              label: Text(
                'Keep Checking',
                style: TextStyle(
                  fontSize: _calculateFontSize(),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     ElevatedButton(
        //         style: ElevatedButton.styleFrom(
        //           // maximumSize: Size(0, 0),
        //           side: BorderSide(color: main2),
        //           backgroundColor: mainbg,
        //         ),
        //         onPressed: () {
        //           _startLoading();
        //           _toggleIconSize();
        //         },
        //         child: Text(
        //           _isLoading ? 'Cheacking...' : 'start Cheacking',
        //           style: const TextStyle(
        //               // fontSize: 15,
        //               color: Colors.white,
        //               fontWeight: FontWeight.bold),
        //         )
        //         ),
        //     ElevatedButton.icon(
        //         style: ElevatedButton.styleFrom(
        //           side: BorderSide(color: main2),
        //           backgroundColor: main2,
        //         ),
        //         onPressed: () {
        //           _startLoading();
        //           _toggleIconSize();
        //           setState(() {
        //             loading = true;
        //           });
        //         },
        //         icon: const Icon(
        //           Icons.online_prediction,
        //           color: Colors.white,
        //         ),
        //         label: const Text(
        //           'Keep Cheacking',
        //           style: TextStyle(
        //               color: Colors.white, fontWeight: FontWeight.bold),
        //         )),
        //   ],
        // ),

        Text(
          ten != 100 && loading == false
              ? 'weak'
              : ten == 50
                  ? 'good'
                  : 'Excelent',
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  double _calculateFontSize() {
    return 13;
  }
}
