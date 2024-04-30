import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

void pdfCreate2(List list) async {
  var pdf = pw.Document();
  final image = pw.MemoryImage(
    File("${list[10]}").readAsBytesSync(),
  );
  pdf.addPage(
    pw.Page(
        margin: const pw.EdgeInsets.all(10),
        orientation: pw.PageOrientation.portrait,
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            children: [
              pw.Expanded(
                child: pw.Row(
                  children: [
                    pw.Container(
                      width: 170,
                      decoration:
                          const pw.BoxDecoration(color: PdfColors.blueGrey100),
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(12),
                        child: pw.Column(
                          children: [
                            h(20),
                            pw.Container(
                              height: 150,
                              width: 300,
                              child: pw.Image(image, fit: pw.BoxFit.fill),
                            ),
                            h(15),
                            detail("CONTACT ME", 140),
                            h(20),
                            pw.Row(
                              children: [
                                pw.Expanded(
                                    child: pw.Text(" ${list[9]}-${list[1]}"))
                              ],
                            ),
                            h(15),
                            pw.Row(
                              children: [
                                w(5),
                                pw.Expanded(child: pw.Text(" ${list[2]}"))
                              ],
                            ),
                            h(15),
                            pw.Row(
                              children: [
                                w(5),
                                pw.Expanded(child: pw.Text("${list[3]}"))
                              ],
                            ),
                            h(15),
                            pw.Row(
                              children: [
                                w(5),
                                pw.Expanded(child: pw.Text(" Address"))
                              ],
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 65),
                              child: detail("EDUCATION", 140),
                            ),
                            h(10),
                            pw.Text("${list[6]}"),
                            h(10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 60),
                              child: detail("EXPERTISE", 140),
                            ),
                            h(10),
                            pw.Text("${list[7]}"),
                            h(10),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 50),
                              child: detail("LANGUAGE", 140),
                            ),
                            h(10),
                            pw.Text("${list[5]}"),
                          ],
                        ),
                      ),
                    ),
                    pw.Container(
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.all(8),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            h(35),
                            pw.Text(
                              "${list[0]}".toUpperCase(),
                              style: (list[0].length > 10)
                                  ? pw.TextStyle(
                                      color: PdfColors.black.shade(87),
                                      fontSize: 25,
                                      fontWeight: pw.FontWeight.bold,
                                      letterSpacing: 1)
                                  : pw.TextStyle(
                                      color: PdfColors.black.shade(87),
                                      fontSize: 32,
                                      fontWeight: pw.FontWeight.bold,
                                      letterSpacing: 1),
                            ),
                            pw.Text(
                              "${list[15]}".toUpperCase(),
                              style: (list[15].length > 10)
                                  ? pw.TextStyle(
                                      color: PdfColors.black.shade(87),
                                      fontSize: 25,
                                      fontWeight: pw.FontWeight.bold,
                                      letterSpacing: 1)
                                  : pw.TextStyle(
                                      color: PdfColors.black.shade(87),
                                      fontSize: 32,
                                      fontWeight: pw.FontWeight.bold,
                                      letterSpacing: 1),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 5),
                              child: pw.Text(
                                " ${list[4]}".toUpperCase(),
                                style: (list[4].length > 18)
                                    ? pw.TextStyle(
                                        color: PdfColors.black.shade(87),
                                        fontSize: 15,
                                        fontWeight: pw.FontWeight.bold)
                                    : pw.TextStyle(
                                        color: PdfColors.black.shade(87),
                                        fontSize: 18,
                                        fontWeight: pw.FontWeight.bold),
                              ),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 25),
                              child: detail("EXPERIENCE", 200),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 207),
                              child: pw.Column(
                                children: [
                                  detail("HOBBIES", 200),
                                  h(7),
                                  pw.Text(
                                      "${list[13]} ${list[14]} \n${list[12]} ${list[11]}",
                                      style: const pw.TextStyle(
                                        fontSize: 16,
                                      ))
                                ],
                              ),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 65),
                              child: pw.Column(
                                children: [
                                  detail("REFERENCE", 200),
                                  pw.Text("${list[15]}",
                                      style: const pw.TextStyle(
                                        fontSize: 16,
                                      ))
                                ],
                              ),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 86),
                              child: detail("OTHER", 200),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
  );
  Directory? dir = await getExternalStorageDirectory();
  print("=============== ${dir!.path}");
  final file = File("${dir.path}/resume2.pdf");
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

pw.Widget detail(String name, double width) {
  return pw.Container(
    height: 30,
    width: width,
    color: PdfColors.black.shade(56),
    alignment: pw.Alignment.center,
    child: pw.Text(
      "$name",
      style: const pw.TextStyle(color: PdfColors.white, letterSpacing: 1),
    ),
  );
}
