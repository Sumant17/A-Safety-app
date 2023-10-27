import 'dart:io';
import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_audio_recorder2/flutter_audio_recorder2.dart';
import 'package:permission_handler/permission_handler.dart';

class RecorderView extends StatefulWidget {
  final Function onSaved;

  const RecorderView({Key? key, required this.onSaved}) : super(key: key);
  @override
  _RecorderViewState createState() => _RecorderViewState();
}

enum RecordingState {
  //enum to check the state
  UnSet,
  Set,
  Recording,
  Stopped,
}

class _RecorderViewState extends State<RecorderView> {
  IconData _recordIcon = Icons.mic_none;
  String _recordText = 'Click To Start';
  RecordingState _recordingState = RecordingState.UnSet;
  Timer? _timer;

  // Recorder properties
  late FlutterAudioRecorder2 audioRecorder;

  @override
  void initState() {
    super.initState();

    FlutterAudioRecorder2.hasPermissions.then((hasPermision) {
      //check permission
      if (hasPermision!) {
        _recordingState = RecordingState.Set;
        _recordIcon = Icons.mic;
        _recordText = 'Record';
      }
    });
  }

  @override
  void dispose() {
    _recordingState = RecordingState.UnSet;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        MaterialButton(
          onPressed: () async {
            await _onRecordButtonPressed();
            setState(() {});
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            width: 150,
            height: 150,
            child: Icon(
              _recordIcon,
              size: 50,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_recordText),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _onRecordButtonPressed() async {
    switch (_recordingState) {
      case RecordingState.Set:
        await _recordVoice(); //if recording state is set ,then it records audio
        break;

      case RecordingState.Recording:
        await _stopRecording();
        _recordingState = RecordingState.Stopped;
        _recordIcon = Icons.fiber_manual_record;
        _recordText = 'Record new one';
        break;

      case RecordingState.Stopped:
        await _recordVoice();
        break;

      case RecordingState.UnSet:
        ScaffoldMessenger.of(context).hideCurrentSnackBar();

        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please allow recording from settings.'),
        ));
        break;
    }
  }

  //get audio file location in .aac extension

  _initRecorder() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String filePath = '${appDirectory.path}/${DateTime.now().millisecondsSinceEpoch}.aac';

    audioRecorder =
        FlutterAudioRecorder2(filePath, audioFormat: AudioFormat.AAC);
    await audioRecorder.initialized;
  }

  _startRecording() async {
    //function to start recording
    await audioRecorder.start();
    _timer = Timer(const Duration(minutes: 1), () async {
      await _stopRecording();
    });

    // await audioRecorder.current(channel: 0);
  }

  _stopRecording() async {
    _timer?.cancel();
    //function to stop recording
    await audioRecorder.stop();

    widget.onSaved();
  }

  Future<void> _recordVoice() async {
    var status =
        await Permission.microphone.request(); //microphone permission request
    if (status != PermissionStatus.granted) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please allow microphone permissions.'),
        ),
      );
      return;
    }

    await _initRecorder();

    await _startRecording();
    _recordingState = RecordingState.Recording;
    _recordIcon = Icons.stop;
    _recordText = 'Recording';

    // await Future.delayed(
    //     const Duration(minutes: 1)); //stop recording after 1 minute
    // await _stopRecording();

    // final hasPermission = await FlutterAudioRecorder2.hasPermissions;
    // if (hasPermission ?? false) {
    //   await _initRecorder();

    //   await _startRecording();
    //   _recordingState = RecordingState.Recording;
    //   _recordIcon = Icons.stop;
    //   _recordText = 'Recording';
    // } else {
  }
}
