import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../../src/widgets/server_image.dart';
import '../../../public/color.dart';
import '../../../public/date_formatter.dart';
import '../../../widget/alert_dialog.dart';
import '../../../widget/divider.dart';
import '../../../widget/showsnackbar.dart';
import '../../../widget/textfield.dart';
import '../../checklist/bloc/checklist_bloc.dart';
import '../model/staff_model.dart';


class StaffItem extends StatefulWidget {
  const StaffItem({required this.post, required this.index, super.key});
  final int index;
  final StaffModelData post;

  @override
  State<StaffItem> createState() => _StaffItemState();
}

class _StaffItemState extends State<StaffItem> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerNameEn = TextEditingController();
  Uint8List? uploadedImage;
  final formatDate = DateFormatter();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final dateformat = DateFormatter();
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Card(
          color:widget.post.isActive==true? null : MyColor.grey_tab,
          child: ListTile(
            minVerticalPadding: 8.0,
            trailing:widget.post.isActive ==true? IconButton(
                onPressed: () async {
                  debugPrint('click trailing button');
                  final int? selected = await showMenu(
                    context: context,
                    position: const RelativeRect.fromLTRB(100, 0, 0, 0),
                    items: [
                      // const PopupMenuItem(
                      //   value: 1,
                      //   child: Text('Update Data'),
                      // ),
                      // const PopupMenuItem(
                      //   value: 2,
                      //   child: Text('Upload Avatar'),
                      // ),
                      // const PopupMenuItem(
                      //   value: 3,
                      //   child: Text('Disable User'),
                      // ),
                      // const PopupMenuItem(
                      //   value: 4,
                      //   child: Text('Delete User'),
                      // ),
                    ],
                  );
                  if (selected != null) {
                    // Handle menu item selection
                    switch (selected) {
                      // case 1:
                      //   setState(() {
                      //     controllerName.text = widget.post.username;
                      //     controllerNameEn.text = widget.post.usernameEn;
                      //   });
                      //   // Handle Option 1 selection
                      //   showDialog(
                      //       context: context,
                      //       builder: (context) => myAlertDialog(
                      //             title: "Update User Data",
                      //             onPress: () {
                      //               debugPrint('press confirm');
                      //               // service_api
                      //               //     .updateUser(
                      //               //       id: widget.post.id.toString(),
                      //               //       username: controllerName.text,
                      //               //       username_en: controllerNameEn.text,
                      //               //       password: "",
                      //               //     )
                      //               //     .then((value) => showSnackBar(context:context,message:value['message']))
                      //               //     .whenComplete(() => Navigator.of(context).pop());
                      //             },
                      //             context: context,
                      //             content: Column(
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: [
                      //                 myTextfield(
                      //                     controller: controllerNameEn,
                      //                     hintText: "Username in english"),
                      //                 myDivider(),
                      //                 myTextfield(
                      //                     controller: controllerName,
                      //                     hintText: "Username"),
                      //               ],
                      //             ),
                      //           ));
                      //   break;
                      // case 2:
                      //   final result = await FilePicker.platform.pickFiles(
                      //       // withData: true,
                      //       type: FileType.image,
                      //       allowCompression: true,
                      //       onFileLoading: (p0) {},
                      //       allowMultiple: false);

                      //   if (result != null && result.files.isNotEmpty) {
                      //     final fileBytes = result.files.first.bytes;
                      //     final fileName = result.files.first.name;
                      //     final fileFormat = fileName.split('.').last;
                      //     // upload file
                      //     debugPrint('${fileBytes!.length}');
                      //     debugPrint('${fileName}');
                      //     try {
                      //       service_api
                      //           .uploadFile(fileBytes, fileName)
                      //           .then((value) {
                      //         final myUrl = value['data']['url'];
                      //         if (myUrl != null) {
                      //           service_api.updateStaff(
                      //               id: widget.post.id,
                      //               role: widget.post.role,
                      //               code: widget.post.code,
                      //               isActive: widget.post.isActive,
                      //               image_url: myUrl,
                      //               username: widget.post.username,
                      //               username_en: widget.post.usernameEn);
                      //         }
                      //         showSnackBar(
                      //             context: context,
                      //             message:
                      //                 value['message'] ?? "an error orcur");
                      //       });
                      //     } catch (e) {
                      //       print(e);
                      //     }
                      //   }
                      //   break;
                      // case 3:
                      //   debugPrint('disable usr ${widget.post.id}');
                      //   showDialog(
                      //       context: context,
                      //       builder: (context) => myAlertDialog(
                      //             title:"Disable User ${widget.post.usernameEn}",
                      //             onPress: () {
                      //               debugPrint('disable user');
                      //               // service_api
                      //               //     .updateUserStatus(
                      //               //       id:widget.post.id,isActive: false).then((value) => showSnackBar(context:context,message: value['message']))
                      //               //     .whenComplete(() => Navigator.of(context).pop());
                      //             },
                      //             context: context,
                      //             content: const Column(
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: [
                      //                 Text("Are you sure to disable this user?")
                      //               ],
                      //             ),
                      //           ));
                      //   break;
                      // case 4:
                      //   debugPrint('delete usr ${widget.post.id}');
                      //   // Handle Option 3 selection
                      //   showDialog(
                      //       context: context,
                      //       builder: (context) => myAlertDialog(
                      //             title:
                      //                 "Delete User ${widget.post.usernameEn}",
                      //             onPress: () {
                      //               debugPrint('delete user');
                      //               service_api
                      //                   .deleteUser(widget.post.id).then((value) => showSnackBar(context:context,message: value['message']))
                      //                   .whenComplete(
                      //                       () => Navigator.of(context).pop());
                      //             },
                      //             context: context,
                      //             content: const Column(
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: [
                      //                 Text("Are you sure to delete this user?")
                      //               ],
                      //             ),
                      //           ));
                      //   break;
                    }
                  }
                },
            icon: const Icon(Icons.more_vert_rounded)):const Icon(Icons.disabled_visible_outlined,color:MyColor.red),
            leading: Text('${widget.index + 1}', style: textTheme.bodyLarge),
            hoverColor: Colors.blue,
            isThreeLine: false,
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ServerImage(imageUrl: widget.post.imageUrl,width_item: 80.0,),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.post.usernameEn,style: textTheme.titleMedium),
                    Text(widget.post.username),
                    // Text("Datetime Created: ${formatDate.formatDateAndTime2(widget.post.createdAt)}",style:textTheme.bodySmall)
                  ],
                ),
              ],
            ),
            dense: false,
          ),
        ),
      ),
    );
  }
}

Widget rowItem({icon, String? text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(icon),
      Text(
        text!,
      )
    ],
  );
}
