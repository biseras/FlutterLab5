import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'Ispit.dart';

class CalendarScreen extends StatelessWidget{
  final List<Ispit> ispiti;

  CalendarScreen(this.ispiti);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: SfCalendar(
          view: CalendarView.month,
          dataSource: DataSource(Source(ispiti)),
          monthViewSettings: MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment
          ),
          firstDayOfWeek: 1,
          showDatePickerButton: true,
        ),
      )
    );
  }
}

List<Ispit> Source(List<Ispit> _termini) {
  final List<Ispit> scheduledExams = _termini;
  return scheduledExams;
}

class DataSource extends CalendarDataSource {
DataSource(List<Ispit> ispit) {
    appointments = ispit;
  }

}

