

import "dart:typed_data";


const String _BYTE_ALPHABET = "0123456789abcdef";
List<int> hexToBytes(String hex) {
  hex = hex.replaceAll(" ", "");
  hex = hex.toLowerCase();
  if(hex.length % 2 != 0)
    hex = "0" + hex;
  Uint8List result = new Uint8List(hex.length ~/ 2);
  for(int i = 0 ; i < result.length ; i++) {
    int value = (_BYTE_ALPHABET.indexOf(hex[i*2]) << 4) //= byte[0] * 16
    + _BYTE_ALPHABET.indexOf(hex[i*2+1]);
    result[i] = value;
  }
  return result;
}