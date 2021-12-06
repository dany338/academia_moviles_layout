import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Layout Design'),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/nature.jpg'),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: ListView(
        children: [
          Image.asset('assets/images/nature.jpg',
              width: double.infinity, height: 240.0, fit: BoxFit.cover),
          const SizedBox(height: 10.0),
          _titleSection(),
          _bottomSection(),
          _textSection(),
        ],
      ),
    );
  }

  Widget _textSection() {
    return const Padding(
        padding: EdgeInsets.all(30.0),
        child: Text(
            'Lake Oeschinen lies at the foot of the Blüemlisalp. Situated 1,578 meter above sea level, it is one of the larger Alpine Lakes. A gondola train leads from Kandersteg to a location near the lake. A half-hour walk across pastures and through pine forest takes you to the lake. The water in the lake warms up to 20 degree Celsius in the summer. Activities enjoyed here include rowing or riding on the summer toboggan run.'));
  }

  Widget _bottomSection() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              Icon(Icons.call, color: Colors.blue),
              Text('CALL',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.0,
                    color: Colors.blue,
                  )),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.near_me, color: Colors.blue),
              Text(
                'ROUTE',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Icon(Icons.share, color: Colors.blue),
              Text(
                'SHARE',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _titleSection() {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: const Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ]),
    );
  }
}
