# csv_parser

Please include a README file that indicates how to run your solution. You may also
want to
include the reasoning behind the design decisions you made, anything you would
change if you were to rewrite it, and anything else you'd like to communicate.


## How to run
Place input in a csv or text file, put the file in the folder, then run the follow command: `ruby csv_parser.rb file_name`

Example:

File `example.csv`:
```
feelings,98473,nil
happy,621dsz.t,98473
sad,what-a-strange-id,98473
Mercury,18,1
Proxima Centauri,23,16
Venus,17,1
Terra,42,1
Milky Way,16,nil
Pluto,14,1
Proxima Centauri c,98,23
Mountains,77,42
Mountains,79,97
Jupiter,78,1
Proxima Centauri b,99,23
Saturn,10,1
Sol,1,16
Uranus,15,1
Luna,24,42
Mars,97,1
```
Command:
```
ruby csv_parser.rb example.csv
```
## Design
I first go through the rows in their given order. After that I assign children to their respective parents. These children are selected using ruby's select function so their order is maintained. With this I have a tree-like structure on which I can perform depth-first search to print item based on its hierarchy and input order.

I went for this solution due to the need to maintain hierarchy and the given order. I find the tree structure to be effective in fulfilling such requirement. Although due to the nested loops while fetching children for the parents, I end up with an O(n²) time complexity. If I were to rewrite it I would like to try to address this issue.