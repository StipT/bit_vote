DateTime unixTimestampToDate(String timestamp) =>
    DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000);

bool isPassed(String timestamp) =>
    unixTimestampToDate(timestamp).isBefore(DateTime.now());

String timeLeft(String timestamp) =>
    _printDuration(unixTimestampToDate(timestamp).difference(DateTime.now()));

int bigIntToInt(BigInt bigInt) => int.parse(bigInt.toString());

BigInt stringToBigInt(String string) => BigInt.from(int.parse(string));

String _printDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return "${twoDigits(duration.inHours)}h ${twoDigitMinutes}m ${twoDigitSeconds}s";
}
