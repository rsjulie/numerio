import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numerio/app/pages/form/form_controller.dart';

class FormPage extends GetView<FormController> {
  final Color violet = const Color.fromARGB(255, 78, 116, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 17, 83),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 60, right: 60, top: 50, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: RadialGradient(colors: [
                          const Color.fromARGB(255, 192, 205, 255),
                          violet,
                          violet.withOpacity(0.9),
                          violet.withOpacity(0.1),
                        ], stops: const [
                          0.1,
                          0.4,
                          0.6,
                          1
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 4.0),
                        child: TextFormField(
                          controller: controller.nameControler,
                          cursorColor: Colors.white,
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Nome',
                            hintStyle: GoogleFonts.josefinSans(
                              color: const Color.fromARGB(143, 240, 216, 255),
                            ),
                            alignLabelWithHint: true,
                            contentPadding: EdgeInsets.zero,
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: violet,
                              ),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: violet,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(width: 3, color: violet),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: RadialGradient(colors: [
                          const Color.fromARGB(255, 160, 159, 255),
                          violet,
                          violet,
                          const Color.fromARGB(0, 81, 78, 255),
                        ], stops: const [
                          0.1,
                          0.4,
                          0.6,
                          1
                        ]),
                      ),
                    ),
                  ],
                ),
                DatePickerWidget(
                  looping: true,
                  firstDate: DateTime(1900, 1, 1),
                  initialDate: DateTime(2022, 1, 1),
                  dateFormat:
                      // "MM-dd(E)",
                      "dd/MMMM/yyyy",
                  locale: DatePicker.localeFromString('pt'),
                  onChange: (DateTime newDate, _) {
                    print(newDate.toString());
                  },
                  pickerTheme: DateTimePickerTheme(
                    showTitle: true,
                    title: Text(
                      'Digite o Nome e a Data de Nascimento',
                      style: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(0.75),
                          fontSize: 11,
                          letterSpacing: 1),
                    ),
                    backgroundColor: Colors.transparent,
                    itemTextStyle: GoogleFonts.josefinSans(
                      color: const Color.fromARGB(255, 218, 210, 255),
                      fontSize: 18,
                    ),
                    dividerColor: violet,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                InkWell(
                  onTap: () async {
                    Get.dialog(SizedBox(
                      child: Column(
                        children: [
                          Flexible(
                              child: Container(
                            color: Colors.black.withOpacity(0.75),
                          )),
                          Opacity(
                            opacity: 0.75,
                            child: Image.asset(
                              'assets/images/loading.gif',
                            ),
                          ),
                          Flexible(
                              child: Container(
                            color: Colors.black.withOpacity(0.75),
                          )),
                        ],
                      ),
                    ));
                    await Future.delayed(const Duration(seconds: 3));
                    Get.back();
                    await Future.delayed(const Duration(milliseconds: 300));
                    Get.offNamed('/home');
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 0),
                    width: double.infinity,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/button.png'))),
                    child: Center(
                      child: Text(
                        'COMEÇAR',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.josefinSans(
                            color: Colors.white,
                            letterSpacing: 6,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
