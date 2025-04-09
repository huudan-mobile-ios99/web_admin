import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../my_src/screen/checklist/view/checklists_page.dart';
import '../../../../../my_src/screen/user/user.dart';
import '../../../../../my_src/service_api/url_api.dart';
import '../../../../../my_src/widget/showsnackbar.dart';
import '../../../../../my_src/widget/text.dart';
import '../../../../utils/extensions/custom_extensions.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key, this.initialCategoryOrder});
  final int? initialCategoryOrder;
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(context.l10n!.library),
            centerTitle: true,
            actions: [
              IconButton(
                  tooltip: "Export CheckList Data",
                  onPressed: () {
                    print('export data');
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Export checklist data"),
                              content: text_custom(
                                  text:
                                      "Click ok to export checklist data to excel file"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: text_custom(text: "CANCEL")),
                                TextButton(
                                    onPressed: () {
                                      debugPrint('confirm');
                                      service_api.exportDataExcel().then((value) {
                                        showSnackBar(
                                            context: context,
                                            message: value['message']);
                                        launchUrl(Uri.parse(UrlAPIs.openDownloadLinkExcel(value['filePath'])));
                                      }).whenComplete(() =>Navigator.of(context).pop(context));
                                    },
                                    child: text_custom(text: "OK")),
                              ],
                            ));
                  },
                  icon: const Icon(Icons.download)),
            ]),
        body: const ChecklistPage());
  }
}
