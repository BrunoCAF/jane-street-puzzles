# Knight Moves 4

I found the solution to this puzzle basically by using backtracking. 

I wrote some code to help me visualize the positions the knight could be at any jump, so as to gain some insight and try to reduce the possibilities by hand.

At first I had coded a stochastic board solver that would simply try to fill the board randomly while respecting some restrictions until it would magically stumble upon the correct solution, but it didn't quite work out. At last, I figured out how to perform an actual, deterministic search through the tree of possibilities which would at last give me the solution. 