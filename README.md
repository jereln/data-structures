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

##Stack
It seems that this is very similar to a singly linked list. It is a little simpler since removing an item always comes from the head meaning you dont need to worry about reassigning anything. 

##Queue
Since I was able to use an array, this assignment was fairly simple. My original plan was to just extend the Array class but I ran into some problems testing it. Once I created a Queue class and used the << and  .shift methods, the assignment was complete.

##Hash Table
My implementation is fairly straight-forward. The hash algorithm simply returns the sum of the characters (this has a built in error if anything except a string is passed). When a new table is created, an empty array with the size passed in is created. Each index has it's own empty array in it as well. When a key value pair is passed into the set method, it uses the hash method to set the index and places both key and value in an array and inserts it into the array at the index. To get a value, the index is found using the hash method and each key value pair is compared with the key that was passed through the hash method and the value is returned for the key that matches.

##Binary Tree
Setting up the tree nodes was fairly easy. It is just a node with a left and right child. Using the Wikipedia article on Tree Traversal, I set up pre-order, in-order, and post-order traversals. The biggest problem I ran into was getting the values inserted into an array to display the traversal.

##Deduplicate a Linked List
There are two apporaches for implementing this. The first way is to use auxillary storage and push a node into a new array if its value is not already in the array. They way is to remove nodes inline by using two if blocks to compare a node to all of the other nodes and remove any duplicates. I had a minor bug where my head was always getting set to nil that was messing me up. Once I found this, imlementing the deduplication was fairly simple.


##Resources
http://en.wikipedia.org/wiki/Insertion_sort  
https://www.youtube.com/watch?v=TzeBrDU-JaY (Merge Sort)  
http://davidkariuki.com/blog/2014/05/04/a-quicksort-in-place-implementation-in-ruby  
http://www.och.cc/blog/index.php?entry=entry070511-152543  
http://en.wikipedia.org/wiki/Tree_traversal  
https://github.com/Marco-Lindsay/data-structures
