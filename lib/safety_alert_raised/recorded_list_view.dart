import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RecordListView extends StatefulWidget {
  final List<String> records;
  const RecordListView({
    Key? key,
    required this.records,
  }) : super(key: key);

  @override
  _RecordListViewState createState() => _RecordListViewState();
}

class _RecordListViewState extends State<RecordListView> {
  AudioPlayer audioPlayer = AudioPlayer();
  late int _totalDuration = 120000000;
  late int _currentDuration;
  double _completedPercentage = 0.0;
  bool _isPlaying = false;
  int _selectedIndex = -1;

  // @override
  // void initState() {
  //   super.initState();
  //   _currentDuration = 0;
  // }

  @override
  Widget build(BuildContext context) {
    return widget.records.isEmpty
        ? Center(child: Text('No records yet'))
        : ListView.builder(
            itemCount: widget.records.length,
            shrinkWrap: true,
            reverse: true,
            itemBuilder: (BuildContext context, int i) {
              return ExpansionTile(
                title: Text('New recording ${widget.records.length - i}'),
                subtitle: Text(_getDateFromFilePatah(
                    filePath: widget.records.elementAt(i))),
                onExpansionChanged: ((newState) {
                  if (newState) {
                    setState(() {
                      _selectedIndex = i;
                    });
                  }
                }),
                children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LinearProgressIndicator(
                          minHeight: 3,
                          backgroundColor: Colors.black,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.green),
                          value: _selectedIndex == i ? _completedPercentage : 0,
                        ),
                        IconButton(
                          icon: _selectedIndex == i
                              ? _isPlaying
                                  ? Icon(Icons.pause)
                                  : Icon(Icons.play_arrow)
                              : Icon(Icons.play_arrow),
                          onPressed: () => _onPlay(
                              filePath: widget.records.elementAt(i), index: i),
                        ),
                        Text(
                          _selectedIndex == i && _isPlaying
                              ? _getDurationString(_currentDuration)
                              : _getDurationString(_totalDuration),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
  }

  String _getDurationString(int duration) {
    //function to display duration in 00:00 format
    Duration d = Duration(microseconds: duration);
    int minutes = d.inMinutes.remainder(60);
    int seconds = d.inSeconds.remainder(60);

    return '${minutes.toString().padLeft(2, '0')}: ${seconds.toString().padLeft(2, '0')}';
  }

  Future<void> _onPlay({required String filePath, required int index}) async {
    if (!_isPlaying) {
      await audioPlayer.play(DeviceFileSource(filePath));
      setState(() {
        _selectedIndex = index;
        _completedPercentage = 0.0;
        _isPlaying = true;
      });

      audioPlayer.onPlayerComplete.listen((_) {
        setState(() {
          _isPlaying = false;
          _completedPercentage = 0.0;
        });
      });
      audioPlayer.onDurationChanged.listen((duration) {
        setState(() {
          _totalDuration = duration.inMicroseconds;
        });
      });

      audioPlayer.onPositionChanged.listen((duration) {
        setState(() {
          _currentDuration = duration.inMicroseconds;
          _completedPercentage =
              _currentDuration.toDouble() / _totalDuration.toDouble();
        });
      });
    } else {
      await audioPlayer.pause();
      setState(() {
        _isPlaying = false;
      });
    }
  }

  String _getDateFromFilePatah({required String filePath}) {
    String fromEpoch = filePath.substring(
        filePath.lastIndexOf('/') + 1, filePath.lastIndexOf('.'));

    DateTime recordedDate =
        DateTime.fromMillisecondsSinceEpoch(int.parse(fromEpoch));
    int year = recordedDate.year;
    int month = recordedDate.month;
    int day = recordedDate.day;

    return ('$year-$month-$day');
  }
}
