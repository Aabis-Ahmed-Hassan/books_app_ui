import 'package:flutter/material.dart';

class SingleBookScreen extends StatelessWidget {
  const SingleBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff3E4648),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back),
                      SizedBox(
                        width: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'The Physics Book',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff171721),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Center(
                    child: Image(
                      height: MediaQuery.of(context).size.height * 0.35,
                      image: AssetImage(
                        'assets/book_2.png',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Text(
                    'The Physics Book',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3C3C43),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0075,
                  ),
                  Text(
                    'Clifford A. Pickover',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff06070D),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.0075,
                  ),
                  Text(
                    '\$12.32',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3C3C43)),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    'A spectacular visual journey through 40 years of haute couture from one of the best-known and most trend-setting brands in fashion.',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff06070D),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xffCBAC78),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text('Add to cart'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
