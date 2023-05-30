import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import 'ProviderModel.dart';

class ViewYourThiker extends StatelessWidget {
  const ViewYourThiker({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderModel>(
      builder: (context,provider,x) {
        return Scaffold(
          body: ListView.builder(
            itemCount: provider.athkar.length,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  provider.counterAthkar[index]--;
                  provider.notifyListeners();
                },
                child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          decoration: BoxDecoration(
                color: Color(0x66FFB71B),
                borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      provider.deleteTheker(provider.athkar[index]['id']);
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.rightSlide,
                        title: 'تم بنجاح',
                        desc: 'تم حذف الذكر بنجاح',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                        ).show();
                    }, icon: Icon(Icons.delete))
                  ],
                ),
                Text(provider.athkar[index]['title']),
                Text(provider.counterAthkar[index] >0 ?provider.counterAthkar[index].toString() : 'تم بحمد الله'),
                          ]),
                ),
              );
            }),
        );
      }
    );
  }
}