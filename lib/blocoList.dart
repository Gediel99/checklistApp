import 'package:checklist/addTask.dart';
import 'package:flutter/material.dart';

class BlocoList extends StatelessWidget {
  const BlocoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const ExibeTextField()),
            // );
          },
          icon: const Icon(Icons.add),
        ),
        const CardTest(
          isChecked: false,
        )
      ],
    );
  }
}

class CardTest extends StatefulWidget {
  const CardTest({Key? key, required this.isChecked}) : super(key: key);
  final bool isChecked;

  @override
  State<CardTest> createState() => _CardTestState();
}

class _CardTestState extends State<CardTest> {
  bool _isChecked = false;
  TextEditingController meuController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    final TextDecoration editText =
        _isChecked ? TextDecoration.lineThrough : TextDecoration.none;
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            leading: Checkbox(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
            title: Text(
              'Título da tarefa',
              style: TextStyle(decoration: editText),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              leading: Checkbox(
                value: _isChecked,
                onChanged: (value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              title: const Text("Subtexto"),
            ),
          ),
        ],
      ),
    );
  }
}
