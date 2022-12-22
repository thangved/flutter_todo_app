import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> jobs = [];
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: <Widget>[
        //  Add jobs
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: Row(
            children: [
              Expanded(
                  child: TextField(
                onChanged: (text) {
                  setState(() {
                    inputText = text;
                  });
                },
                onSubmitted: (text) {
                  handleAddJob();
                },
                decoration: const InputDecoration(
                    hintText: 'Nhập tên công việc',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              )),
              ElevatedButton(
                onPressed: handleAddJob,
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),

        //  Jobs list
        SizedBox(
          height: size.height - 200,
          child: ListView.builder(
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(child: Text(jobs[jobs.length - index - 1])),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              jobs.removeAt(index);
                            });
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ))
                    ],
                  ),
                );
              }),
        )
      ]),
    );
  }

  void handleAddJob() {
    if (inputText.length == 0) return;
    setState(() {
      jobs.add(inputText);
    });
  }
}
