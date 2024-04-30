import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void pdfCreate(List list) async {
  final image = pw.MemoryImage(
    File("${list[10]}").readAsBytesSync(),
  );

  var pdf = pw.Document();
  pdf.addPage(
    pw.Page(
      margin: const pw.EdgeInsets.all(10),
      orientation: pw.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.ListView(
          children: [
            pw.Stack(
              children: [
                pw.Container(
                  height: 130,
                  alignment: pw.Alignment.centerLeft,
                  width: double.infinity,
                  color: PdfColors.indigo400,
                  padding: const pw.EdgeInsets.only(top: 45, left: 15),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        "${list[0]} ${list[15]}".toUpperCase(),
                        style:
                            const pw.TextStyle(fontSize: 22, color: PdfColors.white),
                      ),
                      pw.Text(
                        "${list[4]}",
                        style:
                            const pw.TextStyle(fontSize: 19, color: PdfColors.white),
                      ),
                    ],
                  ),
                ),
                pw.Container(
                  height: 80,
                  width: 80,
                  decoration: const pw.BoxDecoration(
                    color: PdfColors.blueGrey,
                    shape: pw.BoxShape.circle
                  ),
                  margin: const pw.EdgeInsets.only(left: 450, top: 25),
                  child: pw.Image(image,fit: pw.BoxFit.fill),
                ),
              ],
            ),
            pw.Padding(
              padding: const pw.EdgeInsets.all(10),
              child: pw.Row(
                children: [
                  pw.Expanded(
                    flex: 4,
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        set("Contact me", PdfColors.indigo400, 18),
                        h(10),
                        set("Mobile", PdfColors.grey, 17),
                        h(3),
                        set("${list[9]}-${list[1]}", PdfColors.black, 15),
                        h(3),
                        set("E-mail", PdfColors.grey, 17),
                        h(3),
                        set("${list[2]}", PdfColors.black, 15),
                        h(3),
                        set("Birth-Date", PdfColors.grey, 17),
                        h(3),
                        set("${list[3]}", PdfColors.black, 15),
                        h(35),
                        set("Skills", PdfColors.indigo400, 18),
                        h(10),
                        set("${list[7]}", PdfColors.black, 17),
                        h(35),
                        set("language", PdfColors.indigo400, 18),
                        h(10),
                        set("${list[5]}", PdfColors.black, 17),
                        h(35),
                        set("Hobbies", PdfColors.indigo400, 18),
                        h(10),
                        set("${list[12]}${list[13]}\n${list[14]}${list[11]}",
                            PdfColors.black, 17),
                        h(30),
                        set("Others", PdfColors.indigo400, 18),
                        (list[8] == "")
                            ? (pw.Text(
                                "   -",
                                style: const pw.TextStyle(fontSize: 25),
                              ))
                            : (set("${list[8]}", PdfColors.black, 17))
                      ],
                    ),
                  ),
                  pw.Expanded(
                    flex: 5,
                    child: pw.Padding(
                      padding: const pw.EdgeInsets.only(left: 20),
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          h(20),
                          set("Education", PdfColors.indigo400, 18),
                          h(5),
                          set("${list[6]}", PdfColors.black, 17),
                          h(150),
                          set("Experience", PdfColors.indigo400, 18),
                          h(5),
                          set("The startup ", PdfColors.black, 17),
                          h(210),
                          set("Reference", PdfColors.indigo400, 18),
                          h(5),
                          set("Name: rajesh godhani ", PdfColors.black, 17),
                          h(20),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    ),
  );
  Directory? dir = await getExternalStorageDirectory();
  print("=============== ${dir!.path}");
  final file = File("${dir.path}/resume1.pdf");
  await file.writeAsBytes(await pdf.save());
}

pw.Widget w(double width) {
  return pw.SizedBox(
    width: width,
  );
}

pw.Widget h(double height) {
  return pw.SizedBox(
    height: height,
  );
}

pw.Widget set(dynamic list, color, double size) {
  return pw.Text(
    "$list",
    style: pw.TextStyle(color: color, fontSize: size),
  );
}
