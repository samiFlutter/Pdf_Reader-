class DocModel {
  String? doc_title;
  String? doc_url;
  String? doc_date;
  int? page_num;

  DocModel(this.doc_title, this.doc_url, this.doc_date, this.page_num);

  static List<DocModel> doc_list = [
    DocModel("test", "https://www.orimi.com/pdf-test.pdf", "28-03-2023", 1),
    DocModel(
        "math",
        "https://www.ency-education.com/uploads/3/0/9/3/309326/bac2022-sciences-se.pdf",
        "28-03-2023",
        10),
  ];
}
