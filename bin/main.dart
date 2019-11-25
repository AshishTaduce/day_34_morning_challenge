// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2
//TODO handle test case when smaller has words left

import 'package:collection/collection.dart';

bool isAnagram(String word1, word2) {
  List letters1 = word1.split('').toList();
  List letters2 = word2.split('').toList();
  letters1.sort();
  letters2.sort();
  return ListEquality().equals(letters2, letters1);
}

int minRemoval(String word1, word2) {
  int removals = 0;
  if (isAnagram(word1, word2)) {
    return removals;
  } else {
    List<String> letters1 = word1.split('').toList();
    letters1.sort();
    List<String> letters2 = word2.split('').toList();
    letters2.sort();
//    List<String> bigger;
//    List<String> smaller;
//    smaller = letters1.length >= letters2.length ? letters2 : letters1;
//    bigger = letters1.length < letters2.length ? letters2 : letters1;
//    print('$bigger and $smaller');
//    int lenght = smaller.length;
    int addnt = 0;

    for (int i = 0; i < letters2.length ; i++) {
        print('before remove $letters1 and $letters2');
        if(letters1.contains(letters2[i])){
          letters1.remove(letters2[i]);
        }
        else{
          addnt++;
        }
        print('after remove $letters1 and $letters2');
      };

      print('before submission $letters1 and $letters2 ');
      return letters1.length + addnt;
    
  }
}

// Challenge 2
// Farthest Hamming Anagrams
// The Hamming distance between two strings is the number of positions at which
// they differ. Hamming distances can only be calculated for strings of equal length.

/// String s1 = "eleven"
/// String s2 = "twelve"
/// They only have the third position (index 2) in common, giving them a Hamming
/// distance of 5.
/// As anagrams are of identical length, the Hamming distance between them can be
/// calculated.

// String s1 = "read"
// String s2 = "dear"
// These strings differ at the first and last positions, giving them a Hamming distance of 2.

/// Create a function that takes two strings, and returns:

// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
// - false if they aren't anagrams, or
// - Their Hamming distance if they are anagrams with >=1 letter at the same index.

FarthestHamming(String s1, String s2) {
  if (isAnagram(s1, s2) && hammingDistance(s1, s2) == s1.length) {
    return true;
  } else if (!isAnagram(s1, s2)) {
    return false;
  } else if (isAnagram(s1, s2) && hammingDistance(s1, s2) >= 1) {
    return hammingDistance(s1, s2);
  }
}

int hammingDistance(String word1, word2) {
  int count = 0;
  if (isAnagram(word1, word2)) {
    List letter1 = word1.split('').toList();
    List letter2 = word2.split('').toList();
    for (int i = 0; i < letter1.length; i++) {
      if (letter1[i] == letter2[i]) {
        count++;
      }
    }
    return count;
  } else {
    return 0;
  }
}

main() {
  print(minRemoval("abcde", "cab"));
}
