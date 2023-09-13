import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/theams.dart';

class LinearProgressIndicatorPage extends StatefulWidget {
  const LinearProgressIndicatorPage({super.key});

  @override
  State<LinearProgressIndicatorPage> createState() =>
      _LinearProgressIndicatorPageState();
}

class _LinearProgressIndicatorPageState
    extends State<LinearProgressIndicatorPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  bool _isLoading = false;

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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // if (_isLoading)
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              final progressValue = (_animation.value * 100).toInt();
              return Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: main2),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: elembg),
                      height: 18,
                      width: 150,
                      child: _isLoading
                          ? LinearProgressIndicator(
                              color: Colors.orange,
                              value: _animation.value,
                            )
                          : Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(color: main2),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  color: elembg),
                              height: 18,
                              width: 150,
                            ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    '$progressValue%',
                    style: const TextStyle(fontSize: 24),
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _startLoading,
            child: const Text('Start Speed Test'),
          ),
        ],
      ),
      //),
    );
  }
}
