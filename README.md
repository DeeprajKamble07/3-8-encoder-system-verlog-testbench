# 3-8-encoder-system-verlog-testbench

An 8-to-3 encoder is a combinational digital circuit that converts one active input out of eight into a 3-bit binary output representing the index of the active input. This encoder operates with an enable (en) signal to control valid operation.

When the enable signal is low, the output remains 000 regardless of input values. When enable is high and exactly one input bit is asserted, the encoder generates the corresponding 3-bit encoded output.
