=begin

Financial Application: Credit Card Number Validation
----------------------------------------------------

Credit card numbers follow certain patterns. A credit card number must
have between 13 and 16 digits. It must start with:

* 4 for Visa cards
* 5 for Master Cards
* 37 for American Express
* 6 for Discover Cards

In 1954, Hans Luhn of IBM proposed an algorithm for validating credit
card numbers. The alrogithm is useful to determine if a card number is
entered correctly or if a card is scanned correctly by a scanner.
Almost all credit card numbers are generated following this validity
check, commonly known as the Luhn Check or the Mod 10 check, which can
be described as follows (for illustration, consider the card number
4388 5760 1840 2625):

1. Double every second digit from right to left. If doubling of a digit
   results in a two-digit number, add up the two digits to get a single
   digit number.

       4 = 2 * 2
       4 = 2 * 2
       8 = 4 * 2
       2 = 1 * 2
       3 = 1 + 2; 12 = 6 * 2
       1 = 1 + 0; 10 = 5 * 2
       7 = 1 + 6; 16 = 8 * 2
       8 = 4 * 2

2. Now add all the single-digit numbers from Step 1:

       37 = 4 + 4 + 8 + 2 + 3 + 1 + 7 + 8

3. Add all the digits in the odd places from right to left:

       37 = 5 + 6 + 0 + 8 + 0 + 7 + 8 + 3

4. Sum the results from Step 2 and Step 3:

       74 = 37 + 37

5. If the result from Step 4 is divisible by 10, the card number is
   valid; otherwise it is invalid. For example, the number
   4388 5760 1840 2625 is invalid, but the number
   4388 5760 1841 0707 is valid.

Write a program that prompts the user to enter a credit card number
as an integer. Display whether the number is valid. Design your
program to use the following methods:

    def is_valid(n)
      # call all your other methods to determine if the number n is a valid
      # credit card number!
    end

    def sum_of_double_even_place(n)
        # double each number in an even place in n. if the doubled number is
        # two-digits, use the sum of the two digits (use get_digit)
    end

    def get_digit(n)
        # Return this number if it is a single digit, otherwise, return the sum
        # of the two digits
    end

    def sum_of_odd_place(n)
        # Return the sum of odd-place digits in number, from right to left
    end

    def prefix_matched(n, d)
        # Return true if the digit d is a prefix for number
    end

    def get_size(n)
        # get the number of digits in n
    end

    def get_prefix(n, k)
        # Return the first k number of digits from number n. If the number of
        # digits in number is less than k, return n.
    end

Examples of numbers:

 |ccnumber        |valid|
 |4388576018402626|false|
 |4388576018410707|true |
 |371449635398431 |true |
 |378282246310005 |true |
 |6011016011016011|true |
 |5454545454545454|true |
 |5111005111051128|true |

=end

