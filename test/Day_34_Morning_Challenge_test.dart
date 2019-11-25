import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('test for min removal', (){
    expect(minRemoval("abcde", "cab"), 2);
    expect(minRemoval('brave', 'cave'), 2);
    expect(isAnagram('even', 'veen'), true);
    expect(isAnagram('even', 'veen'), true);

    expect(hammingDistance('even', 'veen'), 2);

    expect(minRemoval('balloon', 'baloon'), 1);
    expect(minRemoval('balloon', 'balooon'), 2);
    expect(minRemoval('mississippi', 'pope'), 9);
  });

  test('test for Farthest Hamming Anagrams', (){
    expect(minRemoval('read', 'dear'), 2);
    expect(minRemoval('magenta', 'magnate'), 3);
    expect(minRemoval('eleven', 'twelve'), 5);
  });
}



