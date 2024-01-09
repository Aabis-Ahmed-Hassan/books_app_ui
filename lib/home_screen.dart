import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List bookImageAddress = [
    'assets/book_1.png',
    'assets/book_2.png',
    'assets/book_2.png'
  ];
  List bookTitle = ['Fashionopolis', 'The Physics Book', 'Calligraphy'];
  List bookWriter = ['Dana Thomas', 'Clifford A. Pickover', 'June & Lucy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff3E4648),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/logo.png'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.025,
              ),
              const Text(
                'Unlock Your Potential',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xffCBAC78),
                ),
              ),
            ],
          ),
          centerTitle: false,
          actions: [
            GestureDetector(
              onTap: () {},
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/profile_picture.png'),
              ),
            ),
            const mySizedBoxForWidth(),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const mySizedBoxForHeight(),
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Color(0xff1C1B1F),
                    ),
                    mySizedBoxForWidth(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New Books',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff171721),
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          'Select book from below',
                          style: TextStyle(
                            color: Color(0xff3C3C43),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const mySizedBoxForHeight(),
                const Text(
                  'Popular Choice',
                  style: TextStyle(
                    color: Color(0xff3C3C43),
                    fontSize: 19,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const mySizedBoxForHeight(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                      height: 200,
                                      // width: 160,
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(
                                        bookImageAddress[index].toString(),
                                      ),
                                    ),
                                    const mySizedBoxForHeight(),
                                    Text(
                                      bookTitle[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff3C3C43),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      bookWriter[index].toString(),
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Color(0xff06070D),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),
                const mySizedBoxForHeight(),
                const Text(
                  'Newest',
                  style: TextStyle(
                      fontSize: 19,
                      color: Color(0xff3C3C43),
                      fontWeight: FontWeight.w600),
                ),
                const mySizedBoxForHeight(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      height: 150,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/newest.png'),
                    ),
                    mySizedBoxForWidth(),
                    mySizedBoxForWidth(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        mySizedBoxForHeight(),
                        Text(
                          'Yves Saint Laurent',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff3C3C43),
                          ),
                        ),
                        Text(
                          'Suzy Menkes',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff06070D),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        mySizedBoxForHeight(),
                        Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.save)),
                      ],
                    ))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class mySizedBoxForHeight extends StatelessWidget {
  const mySizedBoxForHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
    );
  }
}

class mySizedBoxForWidth extends StatelessWidget {
  const mySizedBoxForWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.025,
    );
  }
}
