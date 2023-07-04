import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 400,
          height: 600,
          clipBehavior: Clip.antiAlias,
          decoration: const BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              const Positioned(
                left: 134,
                top: 14,
                child: Text(
                  'SOBRE NÓS',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Positioned(
                left: 73,
                top: 70,
                child: Container(
                  width: 216,
                  height: 115,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('assets/images/sobre.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 222,
                child: SizedBox(
                  width: 280,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'A ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'XPTO',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: ' é uma startup inovadora que está mudando a maneira como as pessoas pensam sobre desenvolvimento de aplicativos. Nós somos a Apple do mundo do desenvolvimento de aplicativos - sempre na vanguarda da tecnologia e liderando o caminho com nossos produtos e serviços de ponta.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              const Positioned(
                left: 39,
                top: 412,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Levar empresas de todos os tamanhos a criar aplicativos de alta qualidade e eficientes que ofereçam aos usuários experiências incríveis. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 39,
                top: 522,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Acreditamos que o desenvolvimento de aplicativos não deve ser um processo complexo, demorado e caro.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 607,
                child: SizedBox(
                  width: 280,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '"',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: 'O sucesso não é acidental, é trabalho árduo, perseverança, aprendizado, sacrifício e, acima de tudo, amor pelo que você está fazendo ou aprendendo a fazer.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: '"',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 373,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Nosso Objetivo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 39,
                top: 483,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Nossa visão',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 40,
                top: 684,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'PELÉ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFF5B7FFF),
                      fontSize: 16,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}