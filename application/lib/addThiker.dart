import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import 'ProviderModel.dart';

class AddTheker extends StatelessWidget {
  const AddTheker({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderModel>(
      builder: (context,provider,x) {
        return Scaffold(
          appBar: AppBar(
            title: Text('اضافة ذكر'),
            backgroundColor: Color(0xffFFB71B),
          ),
          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ادخل الذكر الذي تريده',
                    
                  ),
                  controller: provider.thekerController,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'ادخل عدد التسبيحات للذكر',
                  ),
                  controller: provider.counterController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // SQLHelper.createTables(database);
                    provider.addThiker();
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.rightSlide,
                      title: 'تم بنجاح',
                      desc: 'تم اضافة الئكر بنجاح',
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      ).show();
                    
                    // Add onPressed logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFB71B),
                    onPrimary: Colors.white,
                  ),
                  child: Text('اضافة ذكر'),
                ),
              ],
            ),
          ),
        );
      }
    );
  ;
  }
}