import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List code = [
    "+91",
    "+93",
    "+355",
    "+213",
    "+1-684",
    "+376",
    "+244",
    "+1-264",
    "+672",
    "+1-268",
    "+54",
    "+374",
    "+297",
    "+61",
    "+43",
    "+994",
    "1-242",
    "+973",
    "+880",
    "1-246",
    "+375",
    "+32",
    "+501",
    "+229",
    "+1-441",
    "+975",
    "591",
    "+387",
    "+267",
    "+55",
    "+246",
    "+1-284",
    "+673",
    "+359",
    "+226",
    "+257",
    "+855",
    "+237",
    "+1",
    "+238",
    "+1-345",
    "+236",
    "+56",
    "+86",
    "+61",
    "+61",
    "+57",
    "+269",
    "+682",
    "+506",
    "+385",
    "+53",
    "+599",
    "+357",
    "+420",
    "+243",
    "+45",
    "+253",
    "+1-767",
    "+1-809",
    "+670",
    "+593",
    "++20",
    "+503",
    "+240",
    "+291",
    "+372",
    "+251",
    "+500",
    "+298",
    "+679",
    "+358",
    "+33",
    "+689",
    "+241",
    "+220",
    "+995",
    "+49",
    "+233",
    "+350",
    "+30",
    "+299",
    "+1-473",
    "+1-671",
    "+502",
    "+224",
    "+245",
    "+592",
    "+509",
    "+504",
    "+852",
    "+36",
    "+354",
    "+62",
    "+98",
    "+964",
    "+353",
    "+972",
    "+39",
    "+225",
    "+1-876",
    "+81",
    "+962",
    "+7",
    "+254",
    "+686",
    "+383",
    "+965",
    "+996",
    "+856",
    "+371",
    "+961",
    "+266",
    "+231",
    "+218",
    "+423",
    "+370",
    "+352",
    "+853",
    "+389",
    "+261",
    "+265",
    "+60",
    "+960",
    "+223",
    "+356",
    "+692",
    "+222",
    "+230",
    "+262",
    "+52",
    "+691",
    "+373",
    "+377",
    "+976",
    "+382",
    "+1-664",
    "+212",
    "+258",
    "+95",
    "+264",
    "+674",
    "+977",
    "+31",
    "+599",
    "+687",
    "+64",
    "+505",
    "+227",
    "+234",
    "+683",
    "+850",
    "+1-670",
    "+47",
    "+968",
    "+92",
    "+680",
    "+970",
    "+507",
    "+675",
    "+595",
    "+51",
    "+63",
    "+64",
    "+58",
    "+351",
    "+1-787",
    "+974",
    "+242",
    "+262",
    "+40",
    "+7",
    "+250",
    "+590",
    "+290",
    "+1-869",
    "+1-758",
    "+590",
    "+508",
    "+1-784",
    "+685",
    "+378",
    "+239",
    "+966",
    "+221",
    "+381",
    "+248",
    "+232",
    "+65",
    "+1-721",
    "+421",
    "+386",
    "+677",
    "+252",
    "+27",
    "+82",
    "+211",
    "+34",
    "+94",
    "+249",
    "+597",
    "+47",
    "+268",
    "+46",
    "+41",
    "+963",
    "+886",
    "+992",
    "+225",
    "+66",
    "+228",
    "+690",
    "+676",
    "+1-868",
    "+216",
    "+90",
    "+993",
    "+1-649",
    "+688",
    "+1-340",
    "+256",
    "+380",
    "+971",
    "+44",
    "+1",
    "+598",
    "+998",
    "+678",
    "+379",
    "+58",
    "+84",
    "+681",
    "+212",
    "+967",
    "+260",
    "+263"
  ];
  TextEditingController txtfname = TextEditingController();
  TextEditingController txtsurname = TextEditingController();
  TextEditingController txtcontact = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtbirthdate = TextEditingController();
  TextEditingController txtlanguages = TextEditingController();
  TextEditingController txtpass = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  TextEditingController txtoccupation = TextEditingController();
  TextEditingController txtother = TextEditingController();
  TextEditingController txtexp = TextEditingController();
  TextEditingController txtref = TextEditingController();

  String? other,
      fname,
      surname,
      contact,
      email,
      birthdate,
      language,
      pass,
      skill,
      occupation,
      ccode,
      exp,
      ref,
      path;
  String gender = "Male";
  bool learn = false,
      read = false,
      sing = false,
      sport = false,
      backbutton = false;
  String learning = "",
      reading = "",
      singing = "",
      sports = "",
      error = "",
      pin = "+91";

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // this willpopscope is use for the user not back to the page
      onWillPop: back,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.indigo.shade400,
            title: Text(
              "Resume",
              style: TextStyle(fontSize: 23),
            ),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                      child: InkWell(
                    onTap: () {
                      setState(() {
                        txtfname.clear();
                        txtcontact.clear();
                        txtemail.clear();
                        txtbirthdate.clear();
                        txtlanguages.clear();
                        txtpass.clear();
                        txtskill.clear();
                        txtoccupation.clear();
                        pin = "+91";
                      });
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.refresh,
                          color: Colors.black,
                        ),
                        Text(" refresh"),
                      ],
                    ),
                  ))
                ],
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                h(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        (path == null)
                            ? CircleAvatar(
                                radius: 60,
                                backgroundImage:
                                    AssetImage("assets/image/profile.png"),
                              )
                            : CircleAvatar(
                                radius: 60,
                                backgroundImage: FileImage(File("$path")),
                              ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 150,
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          information("Choose a photo from"),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  h(20),
                                                  FloatingActionButton(
                                                    onPressed: () async {
                                                      ImagePicker picker =
                                                          ImagePicker();
                                                      XFile? img = await picker
                                                          .pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .camera);
                                                      setState(() {
                                                        path = img!.path;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.camera_alt_rounded,
                                                    ),
                                                    backgroundColor:
                                                        Colors.indigo.shade400,
                                                  ),
                                                  h(5),
                                                  Text(
                                                    "Camera",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                              w(25),
                                              Column(
                                                children: [
                                                  h(20),
                                                  FloatingActionButton(
                                                    onPressed: () async {
                                                      ImagePicker picker =
                                                          ImagePicker();
                                                      XFile? img = await picker
                                                          .pickImage(
                                                              source:
                                                                  ImageSource
                                                                      .gallery);
                                                      setState(() {
                                                        path = img!.path;
                                                      });
                                                    },
                                                    child: Icon(Icons.photo),
                                                    backgroundColor:
                                                        Colors.indigo.shade400,
                                                  ),
                                                  h(5),
                                                  Text(
                                                    "Gallary",
                                                    style:
                                                        TextStyle(fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 78, top: 78),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.camera_alt_rounded,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                h(10),
                Text(
                  "Personal Information :-",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.indigo.shade400),
                ),
                h(15),
                information("Name"),
                h(7),
                get("Name", TextInputType.name, Text(""), txtfname, Icons.edit),
                h(9),
                information("Surname"),
                h(7),
                get("Surname", TextInputType.name, Text(""), txtsurname,
                    Icons.edit),
                h(9),
                information("Contact Number"),
                h(7),
                get(
                    "Contact Number",
                    TextInputType.number,
                    DropdownButton(
                      menuMaxHeight: 200,
                      items: code
                          .map(
                            (e) => DropdownMenuItem(
                              child: Text("$e"),
                              value: "$e",
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          pin = value as String;
                        });
                      },
                      value: pin,
                    ),
                    txtcontact,
                    Icons.call),
                h(9),
                information("Email"),
                h(7),
                get("Email", TextInputType.emailAddress, Text(""), txtemail,
                    Icons.email),
                h(9),
                information("Gender"),
                Row(
                  children: [
                    Radio(
                      activeColor: Colors.indigo.shade400,
                      value: "Male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value as String;
                        });
                      },
                    ),
                    information("Male"),
                    Radio(
                      activeColor: Colors.indigo.shade400,
                      value: "Female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value as String;
                        });
                      },
                    ),
                    information("Female"),
                  ],
                ),
                h(9),
                information("Birth Date"),
                h(7),
                Container(
                  height: 55,
                  width: double.infinity,
                  child: TextFormField(
                    controller: txtbirthdate,
                    style: TextStyle(color: Color(0xFF555259)),
                    decoration: InputDecoration(
                      focusColor: Colors.indigo,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.indigo, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.indigo, width: 2),
                      ),
                      hintText: "Enter Birth Date Ex. 1-1-2022",
                      prefixIcon: Icon(
                        Icons.cake_rounded,
                        color: Colors.indigo.shade400,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Birth Date";
                      } else {
                        return null;
                      }
                    },
                    readOnly: true,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                        builder: (context, child) {
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme: ColorScheme.fromSwatch(
                                primarySwatch: Colors.blueGrey,
                                backgroundColor: Colors.lightBlue,
                                cardColor: Colors.white,
                              ),
                            ),
                            child: child!,
                          );
                        },
                      );

                      if (pickedDate != null) {
                        String formattedDate =
                            DateFormat('dd-MM-yyyy').format(pickedDate);
                        setState(
                          () {
                            txtbirthdate.text = formattedDate;
                          },
                        );
                      } else {
                        Text("Date is not selected");
                      }
                    },
                  ),
                ),
                h(15),
                information("Reference"),
                h(7),
                get("Reference", TextInputType.text, Text("Name/Branch:"),
                    txtref, Icons.person),
                h(15),
                Text(
                  "Education & Skill :-",
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.indigo.shade400),
                ),
                h(15),
                information("Occupation"),
                h(7),
                get("Occupation", TextInputType.text, Text(""), txtoccupation,
                    Icons.work),
                h(9),
                information("Work Experience"),
                h(7),
                get("Work Experience", TextInputType.text, Text(""), txtexp,
                    Icons.access_time_rounded),
                h(9),
                information("Languages"),
                h(7),
                get("Languages", TextInputType.text, Text(""), txtlanguages,
                    Icons.language),
                h(9),
                information("Recently Passed"),
                h(7),
                get("Recently Passed", TextInputType.text, Text(""), txtpass,
                    Icons.school),
                h(9),
                information("Skill"),
                h(7),
                get("Skill", TextInputType.text, Text(""), txtskill,
                    Icons.computer),
                h(9),
                information("Other"),
                h(7),
                get("Other", TextInputType.text, Text(""), txtother,
                    Icons.edit),
                h(9),
                h(7),
                information("Hobbies"),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.indigo.shade400,
                        value: learn,
                        onChanged: (value) {
                          setState(() {
                            learn = value!;
                            if (learn == true) {
                              learning = "Learning,";
                            } else {
                              learning = "";
                            }
                          });
                        }),
                    Text(
                      "Learning",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.indigo.shade400,
                        value: read,
                        onChanged: (value) {
                          setState(() {
                            read = value!;
                            if (read == true) {
                              reading = "Reading,";
                            } else {
                              reading = "";
                            }
                          });
                        }),
                    Text(
                      "Reading",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.indigo.shade400,
                        value: sing,
                        onChanged: (value) {
                          setState(() {
                            sing = value!;
                            if (sing == true) {
                              singing = "singing, ";
                            } else {
                              singing = "";
                            }
                          });
                        }),
                    Text(
                      "Singing",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.indigo.shade400,
                        value: sport,
                        onChanged: (value) {
                          setState(() {
                            sport = value!;
                            if (sport == true) {
                              sports = "sports";
                            } else {
                              sports = "";
                            }
                          });
                        }),
                    Text(
                      "Sports",
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                h(9),
                Padding(
                  padding: const EdgeInsets.only(right: 290),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fname = txtfname.text;
                        surname = txtsurname.text;
                        contact = txtcontact.text;
                        email = txtemail.text;
                        birthdate = txtbirthdate.text;
                        language = txtlanguages.text;
                        pass = txtpass.text;
                        skill = txtskill.text;
                        other = txtother.text;
                        occupation = txtoccupation.text;
                        ref = txtref.text;
                        exp = txtexp.text;
                        List list = [
                          fname,
                          contact,
                          email,
                          birthdate,
                          occupation,
                          language,
                          pass,
                          skill,
                          other,
                          pin,
                          path,
                          sports,
                          learning,
                          reading,
                          singing,
                          surname,
                          ref,
                          exp
                        ];
                        if (txtfname.text == "" ||
                            txtsurname.text == "" ||
                            txtcontact.text == "" ||
                            txtemail.text == "" ||
                            txtbirthdate.text == "" ||
                            txtlanguages.text == "" ||
                            txtpass.text == "" ||
                            txtskill.text == "" ||
                            txtoccupation.text == "") {
                          error = "Note: Please fill above details";
                        } else {
                          Navigator.pushNamed(context, 'choose',
                              arguments: list);
                          error = "";
                        }
                      });
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                        maximumSize: Size(100, 60),
                        backgroundColor: Colors.indigo.shade400),
                  ),
                ),
                h(5),
                Text(
                  "$error",
                  style: TextStyle(color: Colors.red, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget w(double width) {
    return SizedBox(
      width: width,
    );
  }

  Widget h(double height) {
    return SizedBox(
      height: height,
    );
  }

  Widget information(String data) {
    return Text(
      "$data",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
    );
  }

  Widget get(hint, inputtype, Widget pre, controller, icon) {
    return Container(
      height: 55,
      width: double.infinity,
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 17),
        textInputAction: TextInputAction.next,
        keyboardType: inputtype,
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.indigo),
          label: Text(
            "$hint",
            style: TextStyle(color: Colors.indigo.shade500),
          ),
          prefix: pre,
          focusColor: Colors.indigo,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.indigo, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.indigo, width: 2),
          ),
        ),
      ),
    );
  }

  void Showdialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text("Are you sure to Exit?"),
        actions: [
          OutlinedButton(
            onPressed: () {
              backbutton = false;
              Navigator.of(context).pop(false);
            },
            child: Text("cancel"),
          ),
          OutlinedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("Ok"),
          ),
        ],
      ),
    );
  }

  Future<bool> back() async {
    Showdialog();
    return await false;
  }
}
