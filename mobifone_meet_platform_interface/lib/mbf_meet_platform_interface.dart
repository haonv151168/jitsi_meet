import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mbf_meet_options.dart';
import 'mbf_meet_response.dart';
import 'mbf_meeting_listener.dart';
import 'method_channel_mbf_meet.dart';

export 'mbf_meeting_listener.dart';
export 'mbf_meet_options.dart';
export 'mbf_meet_response.dart';
export 'feature_flag/feature_flag_helper.dart';
export 'feature_flag/feature_flag_enum.dart';

abstract class MBFMeetPlatform extends PlatformInterface {
  /// Constructs a JitsiMeetPlatform.
  MBFMeetPlatform() : super(token: _token);

  static final Object _token = Object();

  static MBFMeetPlatform _instance = MethodChannelMBFMeet();

  /// The default instance of [MBFMeetPlatform] to use.
  ///
  /// Defaults to [MethodChannelMBFMeet].
  static MBFMeetPlatform get instance => _instance;

  static set instance(MBFMeetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Joins a meeting based on the JitsiMeetingOptions passed in.
  /// A JitsiMeetingListener can be attached to this meeting that 
  /// will automatically be removed when the meeting has ended
  Future<MBFMeetingResponse> joinMeeting(MBFMeetingOptions options,
      {MBFMeetingListener? listener}) async {
    throw UnimplementedError('joinMeeting has not been implemented.');
  }

  closeMeeting() {
    throw UnimplementedError('joinMeeting has not been implemented.');
  }

  /// Adds a JitsiMeetingListener that will broadcast conference events
  addListener(MBFMeetingListener jitsiMeetingListener) {
    throw UnimplementedError('addListener has not been implemented.');
  }

  /// remove JitsiListener
  removeListener(MBFMeetingListener jitsiMeetingListener) {
    throw UnimplementedError('removeListener has not been implemented.');
  }

  /// Removes all JitsiMeetingListeners
  removeAllListeners() {
    throw UnimplementedError('removeAllListeners has not been implemented.');
  }

  void initialize() {
    throw UnimplementedError('_initialize has not been implemented.');
  }

  /// execute command interface, use only in web
  void executeCommand(String command, List<String> args) {
    throw UnimplementedError('executeCommand has not been implemented.');
  }

  /// buildView
  /// Method added to support Web plugin, the main purpose is return a <div>
  /// to contain the conferencing screen when start
  /// additionally extra JS can be added usin `extraJS` argument
  /// for mobile is not need because the conferecing view get all device screen
  Widget buildView(List<String> extraJS) {
    throw UnimplementedError('_buildView has not been implemented.');
  }
}
