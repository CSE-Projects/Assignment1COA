# Assignment 1 CO-200 (Computer Organization and Architecture)

### By: Omkar Srinivas Prabhu (Batch-2 16CO233) and Dibyadarshan Hota (Batch-1 16CO154)

## Contents: 

### Q1

A hello world message should be printed out by a module periodically. The module should
also print the current timestamp (in clock cycles). Module terminates after 100 clock cycles.

### Q2

Implement a combinational 4-to-16 decoder and a 16-to-4 encoder.

### Q3

Implement a combinational half adder (HA).

### Q4

Using the HA module from the previous question, Implement a combinational full adder (FA).

### Q5

Using the FA module from the previous question, build an n-bit Adder/Subtractor module.
Value of ‘n’ should be configurable. Possible n values are 4,8,. . .,256.

### Q6

Implement a 2 node point to point interconnection network. Implement two versions of the system.
* Version 1. Periodically, both A and B send messages to each other. Each prints out the received message along
with the timestamp at the output.
* Version 2. After random intervals, A sends one message to B. B responds with 4 replies. A prints sent and received
messages at the output.

### Q7

Implement a 1 bit sequential memory cell (a D-Flip Flop)
 
### Q8

Use the memory cell designed above to implement a 32 bit register. The data input and data output are
now 32 bit wide (instead of 1-bit in the case of the memory cell). The reset signal is still 1-bit signal as in the case of
the memory cell.

