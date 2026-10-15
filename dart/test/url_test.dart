import 'package:samplab_url_tools/samplab_url_tools.dart';
void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://samplab.pro/') throw StateError('home');
  if (urls.tool_url('audio-to-midi') != 'https://samplab.pro/audio-to-midi/') throw StateError('extra');
}
