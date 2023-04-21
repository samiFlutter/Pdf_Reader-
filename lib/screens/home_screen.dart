import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf_reader/models/doc_model.dart';
import 'package:pdf_reader/screens/reader_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("PDF Reader"),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                "Recent Documents ",
                style: GoogleFonts.roboto(fontSize: 30),
              ),
              Column(
                children: DocModel.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderScreen(doc)));
                          },
                          leading: Icon(
                            Icons.picture_as_pdf,
                            color: Colors.red,
                            size: 28,
                          ),
                          title: Text(
                            doc.doc_title!,
                            style: GoogleFonts.nunito(),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text("${doc.page_num!} pages"),
                          trailing: Text(
                            doc.doc_date!,
                            style: GoogleFonts.nunito(color: Colors.grey),
                          ),
                        ))
                    .toList(),
              )
            ]),
          )),
    );
  }
}
