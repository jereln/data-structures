#Data-Structures & Algorithms

##Approach
###Insertion Sort
The insertion sort is the most basic of the sort methods and there is plenty of documentation online about how to do one. My algorithm simply compares a number with the last in the array and swaps until the value is larger than the one it is compared to.

##Merge Sort
After some research online and watching a video on merge sort, I was able to grasp the sorting part pretty easily. It took me a little longer to understand the recursive merging part. The discussion in class was helpful for this. 

##Quick Sort
It took me a while to finally figure out which approach I wanted to do. I settled on moving the pivot all the way to the right and switching the right and left (minus the pivot) if the right was higher than the pivot. The right boundary was incremented each time the next right value was evaluated. Once all the values were sorted either greater or less than the pivot, the pivot was moved just to the right of the boundary putting it in it's place. This was called recursively on the left and right parts of the array until everything was sorted.

##Radix Sort
Not comparing values made this one a little different to approach than the others. Once I fiugred out a way to get what number was in a specific place digit (using 10**n and %) it was pretty simple. The number of rounds needed was figured out by converting the number to a string and counting its length.

##Singly Linked List
Since we went over this in class, it was fairly easy to implement. Only having to worry about the current and next elements made things simpler.

##Resources
http://en.wikipedia.org/wiki/Insertion_sort
https://www.youtube.com/watch?v=TzeBrDU-JaY (Merge Sort)
http://davidkariuki.com/blog/2014/05/04/a-quicksort-in-place-implementation-in-ruby