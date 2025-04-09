import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../../../function/generate_random_num.dart';
import '../../../widget/alert_dialog.dart';
import '../../../widget/divider.dart';
import '../../../widget/showsnackbar.dart';
import '../../../widget/textfield.dart';
import '../bloc/user_bloc.dart';
import 'user_list.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerName = TextEditingController();
    final TextEditingController controllerNameEn = TextEditingController();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) => myAlertDialog(
                    title: "Add New User",
                    onPress: () {
                      debugPrint('press confirm');
                      service_api.createUser(
                              username: controllerName.text,
                              username_en: controllerNameEn.text,
                              password: generateRandomNumber().toString(),
                              isActive: true)
                          .catchError((e) {
                            print(e);
                          })
                          .then((value) => showSnackBar(context: context, message: value['message']))
                          .whenComplete(() => Navigator.of(context).pop());
                    },
                    context: context,
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        myTextfield(
                            controller: controllerNameEn,
                            hintText: "Username in english"),
                        myDivider(),
                        myTextfield(
                            controller: controllerName, hintText: "Username"),
                      ],
                    ),
                  ));
        },
        child: const Icon(Icons.add),
      ),
      body: BlocProvider(
        create: (_) => UserBloc(httpClient: http.Client())..add(UserFetched()),
        child: const UserList(),
      ),
    );
  }
}
