import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled2/presentation/tickets/bloc/tickets_state.dart';

class TicketsTabBloc extends BlocBase<TicketState> {
  TicketsTabBloc() : super(const TicketDisplayTicket1(true));

  void fetchTicket({bool isActiveTabFirst = false, isActiveTabSecond = false}) {
    if (isActiveTabFirst == true && isActiveTabSecond == false) {
      emit(const TicketDisplayTicket1(true));
    }
    if (isActiveTabFirst == false && isActiveTabSecond == true) {
      emit(const TicketDisplayTicket2(true));
    }
  }
}
