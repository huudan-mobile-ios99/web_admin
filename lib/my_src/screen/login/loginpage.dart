import 'package:flutter/material.dart';

import '../../../src/sorayomi.dart';
import '../../function/sharepreference_manager.dart';
import '../../service_api/service_api.dart';
import '../../widget/showsnackbar.dart';
import '../../widget/text.dart';
import '../../widget/text_form_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController controllerName = TextEditingController(text: '');
  final TextEditingController controllerPass = TextEditingController(text: '');

  //DECLARE SOCKET IO

  GlobalKey<RefreshIndicatorState> refreshKey =
      GlobalKey<RefreshIndicatorState>();
  final service_api = ServiceAPIs();

  @override
  void initState() {
    debugPrint("LOGIN PAGE");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  filterQuality: FilterQuality.low,
                  fit: BoxFit.cover)),
          child: AlertDialog(
            content: SizedBox(
              height: height / 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Login Controller",style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                  const Spacer(),
                  mytextformfield(
                      controller: controllerName,
                      hint: "Enter Your Username",
                      isPass: false),
                  const SizedBox(
                    height: 16.0,
                  ),
                  mytextformfield(
                      controller: controllerPass,
                      hint: "Enter Your password",
                      isPass: true),
                  const Spacer(),
                  //Row Admin Page
                  ElevatedButton.icon(
                      icon: const Icon(Icons.login_rounded),
                      onPressed: () {
                        print('click login');
                        navigateToPage(context);
                      },
                      label: text_custom(text: "Login")),
                ],
              ),
            ),
          ),
        ));
  }

  navigateToPage(context) {
    if (controllerName.text == 'admin' && controllerPass.text == 'vegas123456') {
        print('default to access');
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Sorayomi()));
        UserLoginManager.setLoggedIn(true);
      } 
    else if(controllerName.text.isEmpty || controllerPass.text.isEmpty) {
        showSnackBar(
            context: context,
            message: 'Please fill password or username');
    }
    else{
    try { 
      service_api.loginAccount(
        function: (){
          showSnackBar(
            context: context,
            message: 'Incorrect password && username, please retry');
        },
        username: controllerName.text, password: controllerPass.text).then((value) {
        print(value['message']);
        if(value['status']==false || value == null){
          showSnackBar(
            context: context,
            message: 'Incorrect password && username, please retry');
        }else{
          showSnackBar(
            context: context,
            message: 'Incorrect password && username, please retry');
        }
        if(value['status']==true){
          showSnackBar(context: context, message: value['message']);
          UserLoginManager.setLoggedIn(true);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Sorayomi()));
        }
      }).whenComplete(() {
        print('complete login');
        
      });
    } catch (e) {
      showSnackBar(context: context, message: e.toString());
    }
    }
  }
}
