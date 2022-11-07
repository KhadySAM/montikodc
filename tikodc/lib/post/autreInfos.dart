import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AutresInfosdelaPub extends StatefulWidget {
  final Map user;
  final Map infos;
  const AutresInfosdelaPub({Key? key, required this.user, required this.infos})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _AutresInfosdelaPub();
}

class _AutresInfosdelaPub extends State<AutresInfosdelaPub> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@ ${widget.user['pseudo']}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${widget.infos['description']}',
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 15,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Son original - ${widget.infos['artiste']}',
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 80,
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            child: const CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage(
                                'assets/images/prof.jpg',
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 15,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          Text(
                            '${widget.infos['like']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidCommentDots,
                            color: Colors.white.withOpacity(0.85),
                            size: 45,
                          ),
                          Text(
                            '${widget.infos['commentaires']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                      child: Column(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.share,
                            color: Colors.white,
                            size: 25,
                          ),
                          Text(
                            '${widget.infos['partages']}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    const AnimatedLogo(),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: const DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}
