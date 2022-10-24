import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/components/components.dart';
import 'package:todo_app/shared/cubit/cubit.dart';
import 'package:todo_app/shared/cubit/states.dart';

class new_Tasks extends StatelessWidget {
  const new_Tasks({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,CubitStates>(builder:(context, state) {
      var tasks=AppCubit.get(context).Newtasks;
      return ListView.separated(itemBuilder: (context,index)=> buildTaskItem(AppCubit.get(context).Newtasks[index],context),
          separatorBuilder: (context,index)=>
              const Divider(
                color: Colors.grey,
                thickness: 3.0,
              ),
          itemCount: AppCubit.get(context).Newtasks.length);
    }, listener: (context, state) {

    },);
  }
}
