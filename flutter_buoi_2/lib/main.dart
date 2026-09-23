import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const BuoiHaiApp());
}

class BuoiHaiApp extends StatelessWidget {
  const BuoiHaiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BuoiHaiScreen(),
    );
  }
}

class BuoiHaiScreen extends StatelessWidget {
  const BuoiHaiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final widthUnit = (constraints.maxWidth - 12) / 480;
          final heightUnit = (constraints.maxHeight - 7 - 24 - 40) / 536;
          final unit = math.max(0.1, math.min(widthUnit, heightUnit));
          final tileWidth = 480 * unit;

          return Padding(
            padding: const EdgeInsets.fromLTRB(6, 7, 6, 0),
            child: Stack(
              children: [
                Column(
                  children: [
                    _ColorTile(
                      number: '1',
                      color: const Color(0xFF2877E9),
                      height: 92 * unit,
                      width: tileWidth,
                    ),
                    const SizedBox(height: 8),
                    _ColorTile(
                      number: '2',
                      color: const Color(0xFFFF3F40),
                      height: 92 * unit,
                      width: tileWidth,
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 192 * unit,
                      width: tileWidth,
                      child: Row(
                        children: [
                          _ColorTile(
                            number: '3',
                            color: const Color(0xFFFFD225),
                            textColor: Colors.black,
                            width: 116 * unit,
                          ),
                          const SizedBox(width: 8),
                          _ColorTile(
                            number: '4',
                            color: const Color(0xFF2AA66A),
                            width: 116 * unit,
                          ),
                          const SizedBox(width: 8),
                          _ColorTile(
                            number: '5',
                            color: const Color(0xFF713BDD),
                            width: 116 * unit,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    _ColorTile(
                      number: '6',
                      color: const Color(0xFFFF7919),
                      height: 160 * unit,
                      width: tileWidth,
                    ),
                  ],
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: 13,
                  child: Center(
                    child: Text(
                      'Đỗ Tuấn Anh - BIT240015',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({
    required this.number,
    required this.color,
    this.textColor = Colors.white,
    this.height,
    this.width,
  });

  final String number;
  final Color color;
  final Color textColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      alignment: Alignment.center,
      child: Text(
        number,
        style: TextStyle(
          color: textColor,
          fontSize: 38,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
