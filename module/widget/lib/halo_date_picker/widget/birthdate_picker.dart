import 'dart:math';
import 'package:content/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:theme/material3/m3_theme_lib.dart';

TextStyle? _themeTextStyle(BuildContext context, {bool isValid = true}) {
  final TextStyle? style = context.bodyMedium;
  return isValid
      ? style
      : style?.copyWith(
          color: CupertinoDynamicColor.resolve(context.onSurfaceVariant.withOpacity(0.7), context),
          decoration: TextDecoration.lineThrough);
}

void _animateColumnControllerToItem(FixedExtentScrollController controller, int targetItem) {
  controller.animateToItem(
    targetItem,
    curve: Curves.easeInOut,
    duration: const Duration(milliseconds: 200),
  );
}

enum CupertinoDatePickerMode {
  date,
}

class BirthDatePicker extends StatefulWidget {
  BirthDatePicker({
    Key? key,
    this.mode = CupertinoDatePickerMode.date,
    required this.onDateTimeChanged,
    DateTime? initialDateTime,
    this.minimumDate,
    this.maximumDate,
    this.minimumYear = 1,
    this.maximumYear,
    this.dateOrder,
    this.backgroundColor,
  })  : initialDateTime = initialDateTime ?? DateTime.now(),
        super(key: key) {
    assert(
      mode != CupertinoDatePickerMode.date ||
          (minimumYear >= 1 && this.initialDateTime.year >= minimumYear),
      'initial year is not greater than minimum year, or minimum year is not positive',
    );
    assert(
      mode != CupertinoDatePickerMode.date ||
          maximumYear == null ||
          this.initialDateTime.year <= maximumYear!,
      'initial year is not smaller than maximum year',
    );
    assert(
      mode != CupertinoDatePickerMode.date ||
          minimumDate == null ||
          !minimumDate!.isAfter(this.initialDateTime),
      'initial date ${this.initialDateTime} is not greater than or equal to minimumDate $minimumDate',
    );
    assert(
      mode != CupertinoDatePickerMode.date ||
          maximumDate == null ||
          !maximumDate!.isBefore(this.initialDateTime),
      'initial date ${this.initialDateTime} is not less than or equal to maximumDate $maximumDate',
    );
  }

  final CupertinoDatePickerMode mode;

  final DateTime initialDateTime;

  final DateTime? minimumDate;

  final DateTime? maximumDate;

  final int minimumYear;

  final int? maximumYear;

  final DatePickerDateOrder? dateOrder;

  final ValueChanged<DateTime> onDateTimeChanged;

  final Color? backgroundColor;

  @override
  State<StatefulWidget> createState() => _BirthDatePickerState();
}

class _BirthDatePickerState extends State<BirthDatePicker> {
  late int textDirectionFactor;
  late CupertinoLocalizations localizations;

  late Alignment alignCenterLeft;
  late Alignment alignCenterRight;

  late int selectedDay;
  late int selectedMonth;
  late int selectedYear;

  late FixedExtentScrollController dayController;
  late FixedExtentScrollController monthController;
  late FixedExtentScrollController yearController;

  bool isDayPickerScrolling = false;
  bool isMonthPickerScrolling = false;
  bool isYearPickerScrolling = false;

  bool get isScrolling => isDayPickerScrolling || isMonthPickerScrolling || isYearPickerScrolling;

  Map<int, double> estimatedColumnWidths = <int, double>{};

  @override
  void initState() {
    super.initState();
    selectedDay = widget.initialDateTime.day;
    selectedMonth = widget.initialDateTime.month;
    selectedYear = widget.initialDateTime.year;

    dayController = FixedExtentScrollController(initialItem: selectedDay - 1);
    monthController = FixedExtentScrollController(initialItem: selectedMonth - 1);
    yearController = FixedExtentScrollController(initialItem: selectedYear);
  }

  @override
  void dispose() {
    dayController.dispose();
    monthController.dispose();
    yearController.dispose();

    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    localizations = CupertinoLocalizations.of(context);
  }

  DateTime _lastDayInMonth(int year, int month) => DateTime(year, month + 1, 0);

  Widget _buildDayPicker(BuildContext context) {
    final int daysInCurrentMonth = _lastDayInMonth(selectedYear, selectedMonth).day;
    return SizedBox(
      height: 150,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            isDayPickerScrolling = true;
          } else if (notification is ScrollEndNotification) {
            isDayPickerScrolling = false;
            _pickerDidStopScrolling();
          }

          return false;
        },
        child: CupertinoPicker(
          scrollController: dayController,
          itemExtent: 50,
          diameterRatio: pi * 2,
          magnification: 1,
          looping: true,
          squeeze: 1.1,
          useMagnifier: true,
          backgroundColor: widget.backgroundColor,
          onSelectedItemChanged: (int index) {
            selectedDay = index + 1;
          },
          selectionOverlay: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: context.colorScheme.onSurfaceVariant),
                top: BorderSide(color: context.colorScheme.onSurfaceVariant),
              ),
            ),
          ),
          children: List<Widget>.generate(31, (int index) {
            final int day = index + 1;
            final isSelected = (selectedDay - 1) == index;
            final bool isInvalidDate =
                (widget.minimumDate?.month == selectedMonth && widget.minimumDate!.day > day) ||
                    (widget.maximumDate?.month == selectedMonth && widget.maximumDate!.day < day);
            return Center(
              child: Text(
                localizations.datePickerDayOfMonth(day),
                style: isSelected
                    ? context.bodyMedium?.medium
                    : _themeTextStyle(context, isValid: (day <= daysInCurrentMonth) && !isInvalidDate),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildMonthPicker(BuildContext context) {
    return SizedBox(
      height: 150,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            isMonthPickerScrolling = true;
          } else if (notification is ScrollEndNotification) {
            isMonthPickerScrolling = false;
            _pickerDidStopScrolling();
          }
          return false;
        },
        child: CupertinoPicker(
          scrollController: monthController,
          itemExtent: 50,
          diameterRatio: pi * 2,
          magnification: 1,
          looping: true,
          squeeze: 1.1,
          useMagnifier: true,
          backgroundColor: widget.backgroundColor,
          onSelectedItemChanged: (int index) {
            selectedMonth = index + 1;
          },
          selectionOverlay: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: context.colorScheme.onSurfaceVariant),
                top: BorderSide(color: context.colorScheme.onSurfaceVariant),
              ),
            ),
          ),
          children: List<Widget>.generate(12, (int index) {
            final int month = index + 1;
            final isSelected = (selectedMonth - 1) == index;
            final bool isInvalidMonth =
                (widget.minimumDate?.year == selectedYear && widget.minimumDate!.month > month) ||
                    (widget.maximumDate?.year == selectedYear && widget.maximumDate!.month < month);
            return Center(
              child: Text(
                localizations.datePickerMonth(month),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: isSelected
                    ? context.bodyMedium?.medium
                    : _themeTextStyle(context, isValid: !isInvalidMonth),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildYearPicker(BuildContext context) {
    return SizedBox(
      height: 150,
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          if (notification is ScrollStartNotification) {
            isYearPickerScrolling = true;
          } else if (notification is ScrollEndNotification) {
            isYearPickerScrolling = false;
            _pickerDidStopScrolling();
          }
          return false;
        },
        child: CupertinoPicker.builder(
          scrollController: yearController,
          itemExtent: 50,
          diameterRatio: pi * 2,
          magnification: 1,
          squeeze: 1.1,
          useMagnifier: true,
          backgroundColor: widget.backgroundColor,
          onSelectedItemChanged: (int index) {
            selectedYear = index;
          },
          itemBuilder: (BuildContext context, int year) {
            if (year < widget.minimumYear) {
              return null;
            }
            if (widget.maximumYear != null && year > widget.maximumYear!) {
              return null;
            }
            final isSelected = (selectedYear) == year;
            final bool isValidYear =
                (widget.minimumDate == null || widget.minimumDate!.year <= year) &&
                    (widget.maximumDate == null || widget.maximumDate!.year >= year);
            return Center(
              child: Text(
                localizations.datePickerYear(year),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: isSelected
                    ? context.bodyMedium?.medium
                    : _themeTextStyle(context, isValid: isValidYear),
              ),
            );
          },
          selectionOverlay: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: context.colorScheme.onSurfaceVariant),
                top: BorderSide(color: context.colorScheme.onSurfaceVariant),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool get _isCurrentDateValid {
    final DateTime minSelectedDate = DateTime(selectedYear, selectedMonth, selectedDay);
    final DateTime maxSelectedDate = DateTime(selectedYear, selectedMonth, selectedDay + 1);

    final bool minCheck = widget.minimumDate?.isBefore(maxSelectedDate) ?? true;
    final bool maxCheck = widget.maximumDate?.isBefore(minSelectedDate) ?? false;

    return minCheck && !maxCheck && minSelectedDate.day == selectedDay;
  }

  void _pickerDidStopScrolling() {
    setState(() {});

    if (isScrolling) {
      return;
    }

    final DateTime minSelectDate = DateTime(selectedYear, selectedMonth, selectedDay);
    final DateTime maxSelectDate = DateTime(selectedYear, selectedMonth, selectedDay + 1);

    final bool minCheck = widget.minimumDate?.isBefore(maxSelectDate) ?? true;
    final bool maxCheck = widget.maximumDate?.isBefore(minSelectDate) ?? false;

    if (!minCheck || maxCheck) {
      final DateTime targetDate = minCheck ? widget.maximumDate! : widget.minimumDate!;
      _scrollToDate(targetDate);

      // "minCheck".logWTF();
      return;
    }

    if (minSelectDate.day != selectedDay) {
      final DateTime lastDay = _lastDayInMonth(selectedYear, selectedMonth);
      // "lastDay".logWTF();
      _scrollToDate(lastDay);
    }
  }

  void _scrollToDate(DateTime newDate) {
    SchedulerBinding.instance.addPostFrameCallback((Duration timestamp) {
      if (selectedYear != newDate.year) {
        _animateColumnControllerToItem(yearController, newDate.year);
      }
      if (selectedMonth != newDate.month) {
        _animateColumnControllerToItem(monthController, newDate.month - 1);
      }
      if (selectedDay != newDate.day) {
        _animateColumnControllerToItem(dayController, newDate.day - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 64),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: _buildDayPicker(context),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: _buildMonthPicker(context),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: _buildYearPicker(context),
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        _actionSaveWidget(),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _actionSaveWidget() {
    return ElevatedButton(
      onPressed: () {
        if (_isCurrentDateValid) {
          widget.onDateTimeChanged(DateTime(selectedYear, selectedMonth, selectedDay));
        }
      },
      child: Text(Str.of(context).common_save,),
    );
  }
}
