import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('test for min removal', (){
    expect(minRemoval("abcde", "cab"), 2);
    expect(minRemoval('brave', 'cave'), 3);
    expect(isAnagram('even', 'veen'), true);
    expect(isAnagram('read', 'dear'), true);

    expect(hammingDistance('even', 'veen'), 2);

    expect(minRemoval('balloon', 'baloon'), 1);
    expect(minRemoval('balloon', 'balooon'), 2);
    expect(minRemoval('mississippi', 'pope'), 11);
  });

  test('test for Farthest Hamming Anagrams', (){
    expect(FarthestHamming('read', 'dear'), 2);
    expect(FarthestHamming('magenta', 'magnate'), 4);
    expect(FarthestHamming('eleven', 'twelve'), false);
  });
}



