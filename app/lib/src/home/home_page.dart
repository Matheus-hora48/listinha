import 'package:cadrninho/src/home/widgets/custom_drawer.dart';
import 'package:cadrninho/src/home/widgets/task_card.dart';
import 'package:cadrninho/src/shared/widgets/user_image_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text('Sigma Notes'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: UserImageButtom(),
          ),
        ],
      ),
      body: Center(
        child: Stack(
          children: [
            ListView.separated(
              padding: const EdgeInsets.only(
                top: 60,
                left: 30,
                right: 30,
                bottom: 200,
              ),
              itemBuilder: (_, index) {
                return const TaskCard(board: null, height: 140,);
              },
              separatorBuilder: (_, index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: 100,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SegmentedButton(
                  segments: const [
                    ButtonSegment(
                      value: 0,
                      label: Text('Todos'),
                    ),
                    ButtonSegment(
                      value: 1,
                      label: Text('Pendentes'),
                    ),
                    ButtonSegment(
                      value: 2,
                      label: Text('Concluídas'),
                    ),
                    ButtonSegment(
                      value: 3,
                      label: Text('Desativadas'),
                    ),
                  ],
                  selected: const {0},
                  onSelectionChanged: (values) {},
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('./edit');
        },
        label: const Text('Nova lista'),
        icon: const Icon(Icons.edit),
      ),
    );
  }
}
