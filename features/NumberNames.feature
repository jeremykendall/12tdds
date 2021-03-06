Feature: Number Names
  As a writer of cheques
  I want to process a numeric representation of an integer
  So that I can produce its equivalent representation in words

  Scenario Outline: Number has a unique name
    Given the numeric representation <digits>
    When I convert the integer
    Then the representation in words should be <words>

    Examples:
      | digits | words       |
      | 0      | "zero"      |
      | 1      | "one"       |
      | 2      | "two"       |
      | 3      | "three"     |
      | 4      | "four"      |
      | 5      | "five"      |
      | 6      | "six"       |
      | 7      | "seven"     |
      | 8      | "eight"     |
      | 9      | "nine"      |
      | 10     | "ten"       |
      | 11     | "eleven"    |
      | 12     | "twelve"    |
      | 13     | "thirteen"  |
      | 14     | "fourteen"  |
      | 15     | "fifteen"   |
      | 16     | "sixteen"   |
      | 17     | "seventeen" |
      | 18     | "eighteen"  |
      | 19     | "nineteen"  |

  Scenario Outline: Numbers less than one hundred
    Given the numeric representation <digits>
    When I convert the integer
    Then the representation in words should be <words>

    Examples:
      | digits | words        |
      | 21     | "twenty-one" |
      | 42     | "forty-two"  |
      | 50     | "fifty"      |
      | 69     | "sixty-nine" |

  Scenario Outline: Numbers less than one thousand
    Given the numeric representation <digits>
    When I convert the integer
    Then the representation in words should be <words>

    Examples:
      | digits | words                          |
      | 100    | "one hundred"                  |
      | 360    | "three hundred and sixty"      |
      | 514    | "five hundred and fourteen"    |
      | 999    | "nine hundred and ninety-nine" |

  Scenario Outline: Numbers over one thousand
    Given the numeric representation <digits>
    When I convert the integer
    Then the representation in words should be <words>

    Examples:
      | digits   | words                                                                         |
      | 1001     | "one thousand and one"                                                        |
      | 2000025  | "two million and twenty-five"                                                 |
      | 654321   | "six hundred and fifty-four thousand, three hundred and twenty-one"           |
      | 43112603 | "forty-three million, one hundred and twelve thousand, six hundred and three" |
