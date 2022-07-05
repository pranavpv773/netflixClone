import 'package:flutter/material.dart';

class NetflixTab extends StatefulWidget {
  const NetflixTab({Key? key}) : super(key: key);

  @override
  State<NetflixTab> createState() => _NetflixTab();
}

class _NetflixTab extends State<NetflixTab> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/netflixN.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15.0,
              top: 5,
            ),
            child: IconButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (ctx) => Search(),
                //   ),
                // );
              },
              icon: const Icon(
                Icons.search,
                size: 28,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
      ),
    );
  }
}
