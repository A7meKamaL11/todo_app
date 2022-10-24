import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/components/constants.dart';
import '../../../shared/components/components.dart';
import '../../../shared/cubit/cubit.dart';
import '../../../shared/cubit/states.dart';

class archived_Tasks extends StatelessWidget {
  //const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,CubitStates>(builder:(context, state) {
      tasks=AppCubit.get(context).Archivedtasks;
      return ListView.separated(itemBuilder: (context,index)=> buildTaskItem(tasks[index],context),
          separatorBuilder: (context,index)=>
          const Divider(
            color: Colors.grey,
            thickness: 3.0,
          ),
          itemCount: AppCubit.get(context).Archivedtasks.length);
    }, listener: (context, state) {

    },);
  }
}
