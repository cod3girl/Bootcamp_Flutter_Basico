import 'package:stream_state/stream_state.dart';

final count = StreamState<int>(initial: 0, persist: true, persistPath: "count");
