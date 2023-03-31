import 'package:equatable/equatable.dart';

abstract class TicketState extends Equatable {
  const TicketState();

  @override
  List<Object> get props => [];
}

class TicketDisplayTicket1 extends TicketState {
  final bool isActive;

  const TicketDisplayTicket1(this.isActive);
}

class TicketDisplayTicket2 extends TicketState {
  final bool isActive;

  const TicketDisplayTicket2(this.isActive);
}
