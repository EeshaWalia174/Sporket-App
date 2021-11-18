import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class EmailUsScreen extends StatefulWidget {
  @override
  _EmailUsScreenState createState() => _EmailUsScreenState();
}

class _EmailUsScreenState extends State<EmailUsScreen> {
  late String codeDialog;
  late String valueText;
  late String name;
  late String email;
  late String phone;
  late String message;
  bool valuefirst = false;
  TextEditingController _nameCntrl = TextEditingController();

  TextEditingController _emailContrl = TextEditingController();
  TextEditingController _phoneContrl = TextEditingController();

  TextEditingController _messageCntrl = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _sKey = GlobalKey<ScaffoldState>();
  bool loading = false;

  var maxLines = 5;


  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
   
    return Scaffold(
      key: _sKey,
      appBar: AppBar(
        backgroundColor: Color(0xffC11F23),
        centerTitle: true,
        title: Text("Contact Us"),
      ),
     
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedCrossFade(
                firstChild: Text(''),
                secondChild: InkWell(
                  child: Form(
                    key: _formkey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Opacity(
                            opacity: 1, 
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: TextFormField(
                                                  validator: (e) {
                                                    if (e!.isEmpty) {
                                                      return "Please Enter Full Name";
                                                    }
                                                    return null;
                                                  },
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onEditingComplete: () =>
                                                      node.nextFocus(),
                                                  onChanged: (val) =>
                                                      name = val,
                                                  controller: _nameCntrl,
                                                  decoration: InputDecoration(
                                                    prefixIcon:
                                                        Icon(Icons.person),
                                                    hintText: "Full Name",
                                                    filled: true,
                                                    fillColor: Colors.grey[200],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: TextFormField(
                                                  validator: (e) {
                                                    if (e!.isEmpty) {
                                                      return "Please Enter Email Address";
                                                    }
                                                    return null;
                                                  },
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onEditingComplete: () => node
                                                      .nextFocus(),
                                                  onChanged: (val) =>
                                                      email = val,
                                                  controller: _emailContrl,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Icon(
                                                      Icons.mail,
                                                    ),
                                                    hintText: "Email ID",
                                                    filled: true,
                                                    fillColor: Colors.grey[200],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  controller: _phoneContrl,
                                                  decoration: InputDecoration(
                                                    fillColor: Colors.grey[200],
                                                    filled: true,
                                                    prefixIcon:
                                                        Icon(Icons.phone),
                                                    hintText: 'Mobile Number',
                                                  ),
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  onEditingComplete: () => node
                                                      .nextFocus(), // Move focus to next
                                                  validator: (e) {
                                                    if (e!.length < 8) {
                                                      return "Please Enter valid Mobile Number";
                                                    }
                                                    return null;
                                                  },
                                                  onChanged: (val) =>
                                                      phone = val,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: maxLines * 24.0,
                                          child: TextFormField(
                                            controller: _messageCntrl,
                                            autofocus: true,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return "This Field is Required";
                                              } else {
                                                return null;
                                              }
                                            },
                                            textInputAction:
                                                TextInputAction.done,
                                            onFieldSubmitted: (_) =>
                                                node.unfocus(),
                                            keyboardType:
                                                TextInputType.multiline,
                                            onSaved: (val) => message = val!,
                                            maxLines: maxLines,
                                            minLines: maxLines,
                                            decoration: InputDecoration(
                                              hintText: "Message",
                                              fillColor: Colors.grey[200],
                                              filled: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                firstCurve:
                    const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
                secondCurve:
                    const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
                sizeCurve: Curves.fastOutSlowIn,
                crossFadeState: loading
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 450),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff0A37E0)),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text('Submit'),
                  onPressed: loading
                      ? null
                      : () async {
                          if (this._formkey.currentState!.validate()) {
                            this._formkey.currentState!.save();
                            
                            _messageCntrl.clear();
                            await submitEmailMessage();
                          
                          }
                        },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  submitEmailMessage() async {
    setState(() {
      
    });
    print('testIdea: $loading');


  // ignore: unused_element
  Widget buildTextField2() {
    final maxLines = 5;

    return Container(
      height: maxLines * 24.0,
      child: TextFormField(
        controller: _messageCntrl,
        validator: (val) {
          if (val!.isEmpty) {
            return "This Field is Required";
          } else {
            return null;
          }
        },
        onSaved: (val) => message = val!,
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: "Meassage",
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
  }
}
