import 'dart:js' as js;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../my_src/public/color.dart';
import '../../../../../my_src/service_api/service_api.dart';
import '../../../../../my_src/service_api/url_api.dart';
import '../../../../../my_src/widget/showtoast.dart';
import '../../../../utils/extensions/custom_extensions.dart';
import '../../../../utils/misc/toast/toast.dart';
import '../../data/downloads/downloads_repository.dart';
import '../../domain/downloads/downloads_model.dart';
import 'widgets/download_card.dart';

class DownloadsScreen extends ConsumerWidget {
  DownloadsScreen({super.key});
  final service_api = ServiceAPIs();

  bool showFab(AsyncValue<Downloads> downloads) =>
      (downloads.valueOrNull?.queue).isNotBlank &&
      downloads.valueOrNull!.queue!.any(
        (element) => element.state != "Error" || element.tries != 3,
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final toast = ref.watch(toastProvider(context));
    final downloads = ref.watch(downloadsSocketProvider);
    return  Scaffold(
          key: key,
          appBar: AppBar(
            title: Text(context.l10n!.downloads),
            // actions: [
            //   if ((downloads.valueOrNull?.queue).isNotBlank)
            //     IconButton(
            //       onPressed: () => AsyncValue.guard(
            //         ref.read(downloadsRepositoryProvider).clearDownloads,
            //       ),
            //       icon: const Icon(Icons.delete_sweep_rounded),
            //     ),
            // ],
          ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //car export
                downloadCard(
                    assetPath: 'assets/icons/car.png',
                    context: context, function: (){
                    service_api.exportDataCarFeedbackExcel().then( (value) {
                                          kIsWeb? js.context.callMethod('open', [
                                                  UrlAPIs.carfeedbackDownloadExcel(value['filePath'])
                                          ]): null;
                                          showToast(
                                              context: context,
                                              message:'${value['message']} with filePath ${value['filePath']}');
                                        }).whenComplete((){});
                }, 
                dialogTitle: 'Export Car Feedback File ', title: 'Download Car Feedback File', subtitle: 'Driver Car feedback from customers', dialogSubtitle: 'Click confirm to export car feedback excel file'),
                const Divider(color: MyColor.grey_tab),
                //toliet export
                downloadCard(
                    assetPath: 'assets/icons/toilet.png',
                    context: context, function: (){
                    service_api.exportDataExcel().then( (value) {
                                          kIsWeb? js.context.callMethod('open', [
                                                  UrlAPIs.checklistDownloadExcel(value['filePath'])
                                          ]): null;
                                          showToast(
                                              context: context,
                                              message:'${value['message']} with filePath ${value['filePath']}');
                                        }).whenComplete((){});
                }, 
                dialogTitle: 'Export Toilet Excel File ', title: 'Download Toilet Feedback File', subtitle: 'Toilet feedback from customers', dialogSubtitle: 'Click confirm to export toilet excel file'),
                const Divider(color: MyColor.grey_tab),
                //user feedback export
                downloadCard(
                    assetPath: 'assets/icons/customer.png',
                    context: context, function: (){
                    service_api.exportDataFeedbackUserExcel().then( (value) {
                                          kIsWeb? js.context.callMethod('open', [
                                                  UrlAPIs.checklistDownloadExcel(value['filePath'])
                                          ]): null;
                                          showToast(
                                              context: context,
                                              message:'${value['message']} with filePath ${value['filePath']}');
                                        }).whenComplete((){});
                }, 
                dialogTitle: 'Export feedback from customer', title: 'Download Customer Feedback File', subtitle: 'Experience feedback from customers in club', dialogSubtitle: 'Click confirm to export feedback customer to excel file')
              ],
            ),
          )
    );
  }
}
