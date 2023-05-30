import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProviderModel.dart';

class Thiker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Provider.of<ProviderModel>(context, listen: false).startCountdown();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ProviderModel>(
                builder: (context, provider, _) {
                  return Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFFB71B),
                    ),
                    child: Center(
                      child: Text(
                        provider.count.toString(),
                        style: TextStyle(fontSize: 48, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              Text(
                'سبحان الله وبحمده 100 مرة',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
