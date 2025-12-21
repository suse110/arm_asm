### Top level T32 instruction set encoding

* MCU如何区分16-bit和32-bit指令？
  * 如果半字的[15:11]是下面的编码，则是32-bit指令，否则位16-bit指令
    * 0b11101
    * 0b11110
    * 0b11111

![](image/instruction/1652107900948.png)


### 16-bit T32 instruction encoding

![](image/instruction/1652107998051.png)

#### Shift (immediate), add, subtract, move, and compare

![](image/instruction/1652108079058.png)

##### Add, subtract (three low registers)

![](image/instruction/1652108156579.png)

##### Add, subtract (two low registers and immediate)

![](image/instruction/1652108312381.png)

##### Add, subtract, compare, move (one low register and immediate)

![](image/instruction/1652108406288.png)

#### Data-processing (two low registers)

![](image/instruction/1652108508455.png)

#### Special data instructions and branch and exchange

![](image/instruction/1652108622908.png)

##### Branch and exchange

![](image/instruction/1652108643972.png)

##### Add, subtract, compare, move (two high registers)

![](image/instruction/1652108667833.png)

#### Load/store

##### Load/store (register offset)

![](image/instruction/1652108699120.png)

##### Load/store word/byte (immediate offset)

![](image/instruction/1652108756475.png)

##### Load/store halfword (immediate offset)

![](image/instruction/1652108787985.png)

##### Load/store (SP-relative)

![](image/instruction/1652108816058.png)

##### Load/store multiple

![](image/instruction/1652109119372.png)


#### Add PC/SP (immediate)

![](image/instruction/1652108844113.png)

#### Miscellaneous 16-bit instructions

![](image/instruction/1652108877230.png)

##### Adjust SP (immediate)

![](image/instruction/1652108928066.png)

##### Extend

![](image/instruction/1652108960019.png)

##### Reverse bytes

![](image/instruction/1652109004227.png)

##### Hints

![](image/instruction/1652109046338.png)

##### Push and Pop

![](image/instruction/1652109088360.png)

#### Conditional branch, and Supervisor Call

![](image/instruction/1652109219035.png)

##### Exception generation

![](image/instruction/1652109250712.png)


### 32-bit T32 instruction encoding

![](image/instruction/1652109347061.png)
