import 'package:flutter/material.dart';
import 'package:jobuiapp/models/job.dart';
import 'package:jobuiapp/screens/home/widgets/JobDetail.dart';
import 'package:jobuiapp/screens/home/widgets/job_item.dart';

class JobList extends StatelessWidget {
  JobList({Key? key}) : super(key: key);
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                    context: context,
                    builder: (contex) => JobDetail(jobList[index]));
              },
              child: JobItem(jobList[index])),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
