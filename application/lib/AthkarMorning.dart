import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderModel.dart';

class AthkarMorning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFB71B),
        title: Text(
          'أذكار الصباح',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Consumer<ProviderModel>(
          builder: (context, provider, _) {
            List<String> list = provider.list;
            List<int> counts = provider.counts;

            if (list.isEmpty) {
              return Center(
                child: Text(
                  "بارك الله فيك لقد أنهيت قراءة الأذكار",
                  style: TextStyle(
                    color: Color(0xffFFB71B),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }else {
            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                String athkar = list[index];
                int count = counts[index];

                return InkWell(
                  onTap: () {
                    if (count > 0) {
                      provider.incrementCount(index);
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: 200,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0x66FFB71B),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          athkar,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          count.toString(),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );}
          },
        ),
      ),
    );
  }
}
