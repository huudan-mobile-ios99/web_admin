import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../../src/utils/extensions/custom_extensions.dart';
import '../../../function/generate_random_num.dart';
import '../../../service_api/service_api.dart';
import '../../../widget/alert_dialog.dart';
import '../../../widget/divider.dart';
import '../../../widget/showsnackbar.dart';
import '../../../widget/textfield.dart';
import '../bloc/staff_bloc.dart';
import 'staff_list.dart';

class StaffPage extends StatelessWidget {
  const StaffPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerNameEn = TextEditingController();
    final service_api = ServiceAPIs();
    return Scaffold(
      appBar: AppBar(
            title: Text(context.l10n!.staff),
            centerTitle: true,
            actions: const []),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     showDialog(
      //         context: context,
      //         builder: (context) => myAlertDialog(
      //               title: "Add New Staff",
      //               onPress: () {
      //                 debugPrint('press confirm');
      //                 // service_api.createUser(
      //                 //         username: controllerName.text,
      //                 //         username_en: controllerNameEn.text,
      //                 //         password: generateRandomNumber().toString(),
      //                 //         isActive: true)
      //                 //     .catchError((e) {
      //                 //       print(e);
      //                 //     })
      //                 //     .then((value) => showSnackBar(
      //                 //         context: context, message: value['message']))
      //                 //     .whenComplete(() => Navigator.of(context).pop());
      //               },
      //               context: context,
      //               content: Column(
      //                 mainAxisSize: MainAxisSize.min,
      //                 children: [
      //                   myTextfield(
      //                       controller: controllerNameEn,
      //                       hintText: "Staff name in english"),
      //                   myDivider(),
      //                   myTextfield(
      //                       controller: controllerName, hintText: "Staff Name"),
      //                 ],
      //               ),
      //             ));
      //   },
      //   child: const Icon(Icons.add),
      // ),
  
      body:BlocProvider(
        create: (_) => StaffBloc()..add(StaffFetch()),
        child: const StaffList(),
      ),
    );
  }
}
