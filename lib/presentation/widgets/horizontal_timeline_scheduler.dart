import 'package:flutter/material.dart';
import 'package:cx6_reserver/domain/models/reservation.dart';
import 'package:cx6_reserver/domain/models/equipment.dart';
import 'package:intl/intl.dart';

/// 横方向タイムラインスケジューラー(複数装置対応)
class HorizontalTimelineScheduler extends StatefulWidget {
  final DateTime selectedDate;
  final List<Equipment> equipments;
  final Map<String, List<Reservation>> reservationsByEquipment;
  final Function(String equipmentId, TimeOfDay startTime, TimeOfDay endTime)?
  onTimeSlotSelected;
  final Function(Reservation)? onReservationTap;

  const HorizontalTimelineScheduler({
    super.key,
    required this.selectedDate,
    required this.equipments,
    required this.reservationsByEquipment,
    this.onTimeSlotSelected,
    this.onReservationTap,
  });

  @override
  State<HorizontalTimelineScheduler> createState() =>
      _HorizontalTimelineSchedulerState();
}

class _HorizontalTimelineSchedulerState
    extends State<HorizontalTimelineScheduler> {
  static const double minHourWidth = 35.0; // 最小セルサイズ
  static const double rowHeight = 60.0;
  static const int startHour = 0;
  static const int endHour = 24;

  String? _draggingEquipmentId;
  Offset? _dragStart;
  Offset? _dragEnd;
  bool _isDragging = false;

  // スクロールコントローラー
  final ScrollController _horizontalScrollController = ScrollController();
  final ScrollController _headerScrollController = ScrollController();
  bool _isSyncing = false; // 無限ループ防止フラグ

  @override
  void initState() {
    super.initState();
    // タイムラインのスクロールをヘッダーに同期
    _horizontalScrollController.addListener(() {
      if (_isSyncing) return;
      if (_headerScrollController.hasClients &&
          _horizontalScrollController.hasClients) {
        _isSyncing = true;
        _headerScrollController.jumpTo(_horizontalScrollController.offset);
        _isSyncing = false;
      }
    });
    // ヘッダーのスクロールをタイムラインに同期
    _headerScrollController.addListener(() {
      if (_isSyncing) return;
      if (_horizontalScrollController.hasClients &&
          _headerScrollController.hasClients) {
        _isSyncing = true;
        _horizontalScrollController.jumpTo(_headerScrollController.offset);
        _isSyncing = false;
      }
    });
  }

  @override
  void dispose() {
    _horizontalScrollController.dispose();
    _headerScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // 画面幅に合わせて時間セルの幅を計算
        // 装置名列(200px)を除いた幅を24時間で割る
        final availableWidth = constraints.maxWidth - 200;
        final calculatedHourWidth = availableWidth / (endHour - startHour);
        // 最小幅を確保
        final hourWidth = calculatedHourWidth.clamp(
          minHourWidth,
          double.infinity,
        );
        final needsHorizontalScroll = hourWidth <= minHourWidth;

        return Column(
          children: [
            // 時間軸ヘッダー
            _buildTimeHeader(hourWidth, needsHorizontalScroll),
            const Divider(height: 1),
            // スクロール可能なタイムライン
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 装置名列
                    _buildEquipmentNameColumn(),
                    // タイムライン部分
                    if (needsHorizontalScroll)
                      Expanded(
                        child: SingleChildScrollView(
                          controller: _horizontalScrollController,
                          scrollDirection: Axis.horizontal,
                          child: _buildTimeline(hourWidth),
                        ),
                      )
                    else
                      Expanded(child: _buildTimeline(hourWidth)),
                  ],
                ),
              ),
            ),
            // スクロールバー（横スクロールが必要な場合のみ表示）
            if (needsHorizontalScroll)
              Container(
                height: 20,
                padding: const EdgeInsets.only(left: 200),
                color: Colors.grey[100],
                child: Scrollbar(
                  controller: _horizontalScrollController,
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    controller: _horizontalScrollController,
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: hourWidth * (endHour - startHour),
                      height: 1,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget _buildTimeHeader(double hourWidth, bool needsScroll) {
    final timeAxisRow = Row(
      children: List.generate(endHour - startHour, (index) {
        final hour = startHour + index;
        return Container(
          width: hourWidth,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.grey[300]!,
                width: hour % 3 == 0 ? 2 : 1,
              ),
            ),
          ),
          child: Text(
            hour.toString().padLeft(2, '0'),
            style: TextStyle(
              fontSize: 12,
              fontWeight: hour % 3 == 0 ? FontWeight.bold : FontWeight.normal,
              color: hour % 3 == 0 ? Colors.black : Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
        );
      }),
    );

    return Container(
      height: 40,
      color: Colors.grey[100],
      child: Row(
        children: [
          // 装置名列のヘッダー
          Container(
            width: 200,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.grey[300]!)),
            ),
            child: const Text(
              '装置名',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          // 時間軸（タイムラインと同じスクロールコントローラーを使用）
          if (needsScroll)
            Expanded(
              child: SingleChildScrollView(
                controller: _headerScrollController,
                scrollDirection: Axis.horizontal,
                child: timeAxisRow,
              ),
            )
          else
            Expanded(child: timeAxisRow),
        ],
      ),
    );
  }

  Widget _buildEquipmentNameColumn() {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Column(
        children: widget.equipments.map((equipment) {
          return Container(
            height: rowHeight,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.computer,
                  size: 20,
                  color: _getStatusColor(equipment.status),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        equipment.name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (equipment.location != null &&
                          equipment.location!.isNotEmpty)
                        Text(
                          equipment.location!,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[600],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildTimeline(double hourWidth) {
    return SizedBox(
      width: hourWidth * (endHour - startHour),
      child: Stack(
        children: [
          // グリッド背景
          Column(
            children: widget.equipments.asMap().entries.map((entry) {
              final equipmentId = entry.value.id;
              final index = entry.key;

              return GestureDetector(
                onPanStart: (details) {
                  setState(() {
                    _draggingEquipmentId = equipmentId;
                    _dragStart = details.localPosition;
                    _isDragging = true;
                  });
                },
                onPanUpdate: (details) {
                  setState(() {
                    _dragEnd = details.localPosition;
                  });
                },
                onPanEnd: (details) {
                  if (_dragStart != null && _dragEnd != null) {
                    _handleDragEnd(
                      equipmentId,
                      _dragStart!,
                      _dragEnd!,
                      hourWidth,
                    );
                  }
                  setState(() {
                    _draggingEquipmentId = null;
                    _dragStart = null;
                    _dragEnd = null;
                    _isDragging = false;
                  });
                },
                child: Container(
                  height: rowHeight,
                  decoration: BoxDecoration(
                    color: index % 2 == 0 ? Colors.white : Colors.grey[50],
                    border: Border(
                      bottom: BorderSide(color: Colors.grey[200]!),
                    ),
                  ),
                  child: Stack(
                    children: [
                      // 時間グリッド線
                      Row(
                        children: List.generate(endHour - startHour, (
                          hourIndex,
                        ) {
                          final hour = startHour + hourIndex;
                          return Container(
                            width: hourWidth,
                            decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                  color: Colors.grey[300]!,
                                  width: hour % 3 == 0 ? 2 : 0.5,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      // ドラッグ中の選択範囲
                      if (_isDragging &&
                          _draggingEquipmentId == equipmentId &&
                          _dragStart != null &&
                          _dragEnd != null)
                        _buildDragSelection(_dragStart!, _dragEnd!),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          // 予約ブロック
          ..._buildReservationBlocks(hourWidth),
        ],
      ),
    );
  }

  List<Widget> _buildReservationBlocks(double hourWidth) {
    final blocks = <Widget>[];

    widget.equipments.asMap().forEach((index, equipment) {
      final reservations = widget.reservationsByEquipment[equipment.id] ?? [];

      for (final reservation in reservations.where((r) => r.isActive)) {
        final startMinutes =
            reservation.startTime.hour * 60 + reservation.startTime.minute;
        final endMinutes =
            reservation.endTime.hour * 60 + reservation.endTime.minute;
        final durationMinutes = endMinutes - startMinutes;

        final left = (startMinutes / 60.0) * hourWidth;
        final width = (durationMinutes / 60.0) * hourWidth;
        final top = index * rowHeight;

        Color blockColor;
        switch (reservation.status) {
          case ReservationStatus.pending:
            blockColor = Colors.orange;
            break;
          case ReservationStatus.confirmed:
            blockColor = Colors.blue;
            break;
          case ReservationStatus.cancelled:
            blockColor = Colors.grey;
            break;
          case ReservationStatus.completed:
            blockColor = Colors.green;
            break;
        }

        blocks.add(
          Positioned(
            left: left,
            top: top + 4,
            width: width.clamp(30, double.infinity),
            height: rowHeight - 8,
            child: GestureDetector(
              onTap: () => widget.onReservationTap?.call(reservation),
              child: Container(
                decoration: BoxDecoration(
                  color: blockColor.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: blockColor, width: 2),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${DateFormat('HH:mm').format(reservation.startTime)} - '
                      '${DateFormat('HH:mm').format(reservation.endTime)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (reservation.purpose != null &&
                        reservation.purpose!.isNotEmpty &&
                        width > 80)
                      Expanded(
                        child: Text(
                          reservation.purpose!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });

    return blocks;
  }

  Widget _buildDragSelection(Offset start, Offset end) {
    final left = start.dx < end.dx ? start.dx : end.dx;
    final right = start.dx > end.dx ? start.dx : end.dx;
    final width = right - left;

    return Positioned(
      left: left,
      top: 4,
      width: width,
      height: rowHeight - 8,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.3),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.blue, width: 2),
        ),
      ),
    );
  }

  void _handleDragEnd(
    String equipmentId,
    Offset start,
    Offset end,
    double hourWidth,
  ) {
    final startX = start.dx < end.dx ? start.dx : end.dx;
    final endX = start.dx > end.dx ? start.dx : end.dx;

    // ピクセルから時間に変換
    final startMinutes = ((startX / hourWidth) * 60).round();
    final endMinutes = ((endX / hourWidth) * 60).round();

    // 5分単位に丸める
    final roundedStartMinutes = (startMinutes / 5).round() * 5;
    final roundedEndMinutes = (endMinutes / 5).round() * 5;

    if (roundedEndMinutes - roundedStartMinutes < 5) {
      // 最小5分以上必要
      return;
    }

    final startTime = TimeOfDay(
      hour: roundedStartMinutes ~/ 60,
      minute: roundedStartMinutes % 60,
    );
    final endTime = TimeOfDay(
      hour: roundedEndMinutes ~/ 60,
      minute: roundedEndMinutes % 60,
    );

    widget.onTimeSlotSelected?.call(equipmentId, startTime, endTime);
  }

  Color _getStatusColor(EquipmentStatus status) {
    switch (status) {
      case EquipmentStatus.available:
        return Colors.green;
      case EquipmentStatus.maintenance:
        return Colors.orange;
      case EquipmentStatus.unavailable:
        return Colors.red;
    }
  }
}
