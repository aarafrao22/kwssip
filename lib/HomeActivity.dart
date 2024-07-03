import 'package:flutter/material.dart';

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    const Spacer(),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                          color: Color(0xff21637D),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      'Ahmed',
                      style: TextStyle(
                          color: Color(0xff3EB3E0),
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24)),
                                  color: Colors.grey),
                              color: Colors.grey,
                              height: 66,
                              child: Image.asset(
                                'asset/images/img_1.png',
                              ),
                            ),
                            Container(
                              color: Colors.grey,
                              height: 66,
                              child: Image.asset(
                                'asset/images/img_1.png',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // Center vertically
                          children: [
                            Image.asset(
                              'asset/images/img_1.png',
                              height: 66,
                            ),
                            Image.asset(
                              'asset/images/img_1.png',
                              height: 66,
                            ),
                            Image.asset(
                              'asset/images/img_1.png',
                              height: 66,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 58,
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // Center vertically
                      children: [
                        stepButton('1'),
                        stepButton('2'),
                        stepButton('3'),
                        stepButton('4'),
                        stepButton('5'),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color(0xff007B9A), // foreground
                      ),
                      onPressed: () {
                        //Shift to Home
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => const HomeActivity()));

                        {
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xff3EB3E0),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(28),
                                      topRight: Radius.circular(28)),
                                ),
                                // color: const Color(0xff3EB3E0),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          const Spacer(),
                                          const Text(
                                            'Give Ahmed a rating!',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Spacer(),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Spacer(),
                                              reactionImage(
                                                  'asset/images/react_1.png'),
                                              Spacer(),
                                              reactionImage(
                                                  'asset/images/react_2.png'),
                                              Spacer(),
                                              reactionImage(
                                                'asset/images/react_3.png',
                                              ),
                                              Spacer(),
                                              reactionImage(
                                                'asset/images/react_4.png',
                                              ),
                                              Spacer(),
                                              reactionImage(
                                                'asset/images/react_5.png',
                                              ),
                                              Spacer(),
                                            ],
                                          ),
                                          const Spacer(),
                                          const Text(
                                            'Leave a comment*',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Container(
                                            height: 4 * 24.0,
                                            // Adjust as needed to fit 4-5 lines (assuming each line height is 24.0)
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              color: Colors.white,
                                            ),
                                            child: const TextField(
                                              maxLines: null,
                                              // Allows the TextField to expand vertically based on content
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                // Removes the border stroke
                                                hintText: 'Enter Your Feedback',
                                                contentPadding:
                                                    EdgeInsets.symmetric(
                                                        horizontal:
                                                            14.0), // Adjust padding as needed
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              foregroundColor: Colors.white,
                                              backgroundColor: const Color(
                                                  0xff007B9A), // foreground
                                            ),
                                            onPressed: () {
                                              //Shift to Home
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomeActivity()));
                                            },
                                            child: const Text('Upload'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }
                      },
                      child: const Text('Upload Pictures'),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget stepButton(String s) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xfff0f0f0), // foreground
      ),
      onPressed: () {
        //Shift to Home
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => const HomeActivity()));
      },
      child: Text(
        s,
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }

  Widget reactionImage(String imagePath) {
    return Image.asset(
      imagePath,
      height: 46,
      // fit: BoxFit.cover,
    );
  }
}
