
## PRACTICE Macros
Macros are the variables of the script language PRACTICE. They work as placeholders for a sequence of characters. Macro names in PRACTICE always start with an ampersand sign (‘&’), followed by a sequence of letters (a-z, A-Z), numbers (0-9) and the underscore sign (’_’). The first character after the & sign must not be a number. Macro names are case sensitive, so &a is different from &A.
### Declare a Macro
Empty PRACTICE macros can be declared along with their scope by using one of the following PRACTICE commands:
>  **PRIVATE {\<macro>}** Create **PRIVATE** macros.
>  - PRIVATE macros are visible in the script, subroutine or block in which they are created. And they are removed when the script, subroutine or block ends.
>  - They are visible in nested blocks, but not in called subroutines and called scripts.
> 
>  **LOCAL {\<macro>}** Create **LOCAL** macros.
>  - LOCAL macros are visible in the script, subroutine or block in which they are created. And they are removed when the script, subroutine or block ends.
>  - They are visible in nested blocks, in called subroutines and called scripts.
> 
>  **GLOBAL {\<macro>}** Create **GLOBAL** macros.
>  - GLOBAL macros are visible to all scripts, subroutines and blocks until they are explicitly removed by the command **PMACRO.RESet**. They can only be removed if no script is running.

### What happens if a PRACTICE macro is used, but not declared?
```
// Script test_func_param.cmm
LOCAL &testfunc &correct_result
OPEN #1 "func_test.txt" /READ
WHILE TRUE()
(
  READ #1 &testfunc &correct_result
  IF "&testfunc"!=""
  (
    GOSUB perform_test
  )
  ELSE
  (
    CLOSE #1
    ENDDO
  )
)
ENDDO
perform_test:
(
  IF Var.VALUE(&testfunc)==&correct_result
  (
    APPEND "test_protocol.txt"\
    FORMAT.STRing("&testfunc=&correct_result",50.,' ')\
    FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
  )
  ELSE
  (
    PRIVATE &result
    &result=CONVert.HEXTOINT(Var.VALUE(&testfunc))
    APPEND "test_protocol.txt"\
    FORMAT.STRing("&testfunc failed with &result (&correct_result)",50.,' ')\
    FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
  )
  RETURN
)
```
The PRACTICE interpreter will implicitly declare a new **LOCAL** macro when an assignment is done and cannot find a macro of that name in the current scope.

The command **PMACRO.EXPLICIT** advises the PRACTICE interpreter to generate an error if a PRACTICE macro is used in an assignment, but was not declared in advance. It also advises the PRACTICE interpreter to generate an error if the same macro was intentionally created a second time within its scope.

### Assign Content to a Macro
```
// Script 
PRIVATE &my_string &my_range &my_var
PRIVATE &my_number &my_float &my_var_value &my_expression
PRIVATE &my_boolean &my_boolean_result 
// Assign a string
&my_string="Hello World"
&my_range="0x40004000++0xfff"
&my_var=Var.STRing(cstr1)
// Assign a numbers
&my_number=100.
&my_float=5.667e13
&my_var_value=Var.VALUE(ast.count)
&my_expression=&my_number*&my_var_value
// Assign a boolean
&my_boolean=TRUE()
&my_boolean_result=STATE.RUN()
ENDDO
```

The PRACTICE stack provide an overview for all macros.
The keyword PRIVATE is used to identify PRIVATE macros

> **Var.STRING(<hll_expression>)**
>  Returns a zero-terminated string, if <hll_expression> is a pointer to character or an array of characters. Returns a string that represents the variable contents otherwise

### Macro Handling
To better understand the usage of macros, it is the best to look at the way the PRACTICE interpreter executes a script line.

The PRACTICE interpreter executes a script line by line. Each line is (conceptually) processed in three steps:
1. All macros are replaced by their corresponding character sequence.
2. All expressions are evaluated.
3. The resulting command is executed.
   
For the following examples the command **PRINT** is used.
> **PRINT {\<data>}** 
> PRINT specified <data> to TRACE32 message line and to TRACE32 message area.

**Example 1**

```
PRIVATE &a
&a="5+4"
PRINT &a
```

We look at the PRINT &a line. To execute this line, the interpreter will first:
1. Replace all macros with their corresponding character sequences. So: 
  PRINT &a -> PRINT 5+4
2. Evaluate all expressions
  PRINT 5+4 -> PRINT 9
3. Execute the resulting command. So it will execute PRINT 9

**Example 2**

```
PRIVATE &a
&a="Hello World"
PRINT &a
```
This example will generate an error.

Let’s look at the three steps the interpreter will take to execute the PRINT &a command:
1. Replace all macros with their corresponding character sequences
  PRINT &a -> PRINT Hello World
2. Evaluate expressions
  PRINT Hello World -> **error**
3. Execute command, which will not happen because of the error in the second step.  

The second step fails because in PRACTICE a single word like Hello (which is not enclosed in double quotes) refers to a debug symbol, loaded, for example, from an ELF file.

When the PRACTICE interpreter encounters such a debug symbol, the expression evaluation will try to replace the debug symbol by the address to which the symbol refers. If there is no debug symbol called **Hello** (which is likely), the PRACTICE interpreter will output the error message **symbol not found**.

If by pure accident there are debug symbols called **Hello** and **World** the addresses of these symbols will 
be printed.

This example demonstrates how the pure macro replacement step will basically always work, since you always can replace a macro by its character sequence; but the result might not make sense.

### Macros as Strings
Macros are replaced by their character sequence. If you want to explicitly use this character sequence as a string, then you should enclose the macro in double quotes, for example:
```
PRIVATE &a
&a="Hello World"
PRINT "&a"
```

To understand what happens it is again best to look at the three steps which are taken to execute the PRINT "&a" command.
1. Replace the macro by its character sequences
  PRINT "&a" -> PRINT "Hello World"
2. Evaluate expressions. 
  Nothing to do for this example.
3. Execute command.

**String composing example:**

```
// Script string_example.cmm
PRIVATE &drive &architecture &demo_directory
&drive="C:"
&architecture="MPC"
// PRINT command
PRINT "Directory " "&drive" "\T32_" "&architecture" "\demo"
PRINT "Directory "+"&drive"+"\T32_"+"&architecture"+"\demo"
PRINT "Directory &(drive)\T32_&(architecture)\demo"
// Macro assignment
&demo_directory="&drive"+"\T32_"+"&architecture"+"\demo"
DIR &demo_directory
&demo_directory="&(drive)\T32_&(architecture)\demo"
DIR &demo_directory
// Command parameter
DIR "&(drive)\T32_&(architecture)\demo"
```

> **DIR \<directory>** 
>   Display a list of files and folders for the specified directory

### Macros as Numbers
```
// Script numbers.cmm
PRIVATE &my_hex &my_dec &my_bin 
PRIVATE &my_stringlength &my_sizeof
PRIVATE &add1 &add2
PRIVATE &convert1 &convert2
// Hex, decimal, binary by TRACE32 syntax
&my_hex=0x7
&my_dec=22.
&my_bin=0y1110
// Hex, decimal, binary as expression result
&add1=&my_bin+&my_hex
&add2=&my_hex+&my_dec
// Hex, decimal, binary as return value
&my_stringlength=STRing.LENgth("0123456789012345")
&my_sizeof=sYmbol.SIZEOF(sieve)
// Hex, decimal, binary by CONVERT function
&convert1=CONVERT.HEXTOINT(&my_bin)
&convert2=CONVERT.HEXTOINT(&my_hex)
```

> **STRing.LENgth(\<string>)**
>   Returns the length of the <string> as a decimal number.
> **sYmbol.SIZEOF(\<symbol>)**
>   Returns the size occupied by the specified debug \<symbol> (e.g. function, variable, module) as a hex. number.


But if you use a PRACTICE output command, the radix information is removed.
```
// Script append_example.cmm
PRIVATE &target_id
&target_id="D:0x40004000"
DEL "my_append.txt"
APPEND "my_append.txt" "Software tested with:"
APPEND "my_append.txt" " "
APPEND "my_append.txt" "Debug Cable: " CABLE.SERIAL()
APPEND "my_append.txt" "TRACE32 Version: " VERSION.BUILD()
APPEND "my_append.txt" "Target Version: " Data.Long(&target_id)
```

**trace32 command**
> **DEL \<filename>**
>   Delete file specified by \<filename>

**TRACE32 functions**

> **CABLE.SERIAL()**
>   Returns the first serial number of the plugged debug cable.
> **VERSION.BUILD()**
>   Returns build number of TRACE32 software as a decimal number.

Since it might be confusing for the reader not to know if a number is decimal or hex, you can proceed as follows:
```
// Script append_example_format.cmm
PRIVATE &target_id
&target_id="D:0x40004000"
DEL "my_append.txt"
APPEND "my_append.txt" "Software tested with:"
APPEND "my_append.txt" " "
APPEND "my_append.txt" "Debug Cable: " FORMAT.STRING(CABLE.SERIAL(),15.,' ')
APPEND "my_append.txt" "TRACE32 Version: " FORMAT.Decimal(8.,VERSION.BUILD())+"."
APPEND "my_append.txt" "Target Version: 0x"+FORMAT.HEX(8.,Data.Long(&target_id))
```
**TRACE32 function**
> **FORMAT.HEX(\<width>,\<number>)** 
>   Formats a numeric expression to a hexadecimal number and generates an output string with a fixed length of \<width> with leading zeros.

### Note for Testing
PRACTICE macros are not available in the command line. They are only available when running a script. 
But you can proceed as follows to test a macro assignment:
`B::&my_version=FORMAT.DECIMAL(8.,VERSION.BUILD())+"."`
you can see the result by `B::PMACRO.list`

### More Complex Data Structures

For all complex data structures TRACE32-internal variables can be used. The following two commands can be used to declare a TRACE32-internal variable.
> **Var.NEWGLOBAL \<type> \\\<name>** 
>   Create a global TRACE32-internal variable
> **Var.NEWLOCAL \<type> \\\<name>** 
>   Create a local TRACE32-internal variable

TRACE32-internal variables require that a program is loaded via the **Data.LOAD** command. All data types provided by this program can then be used (**sYmbol.List.Type**).
- TRACE32-internal variables have the same scope as PRACTICE macros (e.g. they are on the PRACTICE stack).
- TRACE32-internal variables are displayed and modified via the **Var** command group.
 
```
; script newlocal.cmm
LOCAL &my_symbol
ENTRY &my_symbol
Var.NEWLOCAL char[5][40] \typeresult
Var.Assign \typeresult[0]="Symbol does not exist"
Var.Assign \typeresult[1]="Symbol is label"
Var.Assign \typeresult[2]="Symbol is function"
Var.Assign \typeresult[3]="Symbol is variable"
Var.Assign \typeresult[4]="Undefined"
&n=sYmbol.TYPE(&my_symbol)
Var.PRINT %String \typeresult[&n]
ENDDO
```

> **Var.Assign %\<format> \<variable>** 
>   Modify variable, no log is generated in the message line or in the AREA window.
> **sYmbol.TYPE(\<symbol>)** 
>   Returns the basic type of the symbol as a numerical value.
>   0 = symbol does not exist
>   1 = plain label without type information
>   2 = HLL function
>   3 = HLL variable
>   other values may be defined in the future

---------------------------------------------------

## Script Examples
## Run Through Program and Generate a Test Report
**Task of part 1 of the script**: Start the target program execution and wait until the program execution is 
stopped at the entry of the function main.

```
// Script run_through_code.cmm
// Part 1
// Prepare debugging
DO "target_setup.cmm"
Go main
WAIT !STATE.RUN() 2.s
IF STATE.RUN()
(
 Break
)
...
```
**TRACE32 commands**
> **Go \<address>** 
>   Start the program execution.Program execution should stop when \<address> is reached.
> **Break** 
>   Stop the program execution.

**PRACTICE commands**

> **DO \<filename>**
>   Call PRACTICE script \<filename>  
> **WAIT \<condition> \<time_period>**
>   Wait until \<condition> becomes true or \<time_period> has expired.
> 
> **IF \<condition>
> (
>  \<if_block>
> )
> ELSE
> (
>  \<else_block>
> )**
> Execute \<if_block> when \<condition> is true.
> Execute \<else_block> when \<condition> is false.
> PRACTICE is whitespace sensitive. There must be at least one space after a PRACTICE command word.
> \<block> has to be set in round brackets. PRACTICE requires that round brackets are typed in a separate line.


**TRACE32 function**  
> **STATE.RUN()** 
>   Returns TRUE when the program execution is running.
>   Returns FALSE when the program execution is stopped

**Task of part 2 of the script:** Check if program execution stopped at entry to function main and generate a test report.
```
// Part 2
…
IF Register(PC)==ADDRESS.OFFSET(main)
(
 APPEND "test_protocol.txt" FORMAT.STRing("System booted successfully",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),0)
)
ELSE
(
 APPEND "test_protocol.txt" FORMAT.STRing("Booting failed",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),0)
 ENDDO
)
```

The backslash \ in conjunction with at least one space serves as a line continuation character.

**TRACE32 function**
> **Register(\<register_name>)** 
>   Returns the contents of the specified core register as a hex. number.

### Addresses in TRACE32
Why is the following function needed?

```
ADDRESS.OFFSET(main)

PRINT Register(PC) // print the content of the program counter as a hex. number
B::
4000105C

PRINT main         // print the address of main
B::
P:0x4000105C
```

**main** is an address and addresses in TRACE32 PowerView consist of:
* An **access class** (here P:) which consists of one or more letters/numbers followed by a colon (\:)
* A hex. number (here 0x4000105C) that determines the actual address

```
PRINT ADDRESS.OFFSET(main)
B::
4000105C
```

> **ADDRESS.OFFSET(\<symbol>)**
>   Returns the hex. number part of an address.

**PRACTICE commands:**
> **APPEND \<filename> {\<data>}** 
>   Append data to content of file \<filename>.
> 
> **ENDDO** 
>   A script ends with its last command or with the ENDDO command.

**TRACE32 functions:**

> **FORMAT.STRing(\<string>,\<width>,\<filling_character>)**
>   Formats \<string> to the specified \<width>. 
>   If the length of \<string> is shorter the \<width>, the \<filling_character>is appended.
> 
> **DATE.UnixTime()**
>   Returns the time in UNIX format and that is seconds passed since Jan 1st 1970.
> 
> **FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffset())**
>   Format Unix time according to ISO 8601

### Summary
```
// Prepare debugging
DO "target_setup.cmm"
Go main
WAIT !STATE.RUN() 2.s
IF STATE.RUN()
(
 Break.direct
)
IF Register(PC)==ADDRESS.OFFSET(main)
(
 APPEND "test_protocol.txt" FORMAT.STRing("System booted successfully",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
)
ELSE
(
 APPEND "test_protocol.txt" FORMAT.STRing("Booting failed",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
 ENDDO
)
…
```
### Check Contents of Addresses
**Task of the script:** After an appropriate program address e.g. main is reached, you can check if certain memory addresses are initialized with their correct value.

```
// Script check_memory_locations.cmm
IF Data.Long(D:0x40004058)!=0x0
(
 APPEND "test_protocol.txt"\
 FORMAT.STRing("Initialization of address D:0x40004058 failed",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
)
IF Data.Long(ANC:0xC3FDC0C4)!=0x0
(
 APPEND "test_protocol.txt"\
 FORMAT.STRing("Initialization of Global Status Register failed",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
)
```
**TRACE32 function**
> **Data.Long(\<address>)**
>   Returns the contents of the specified address as a 32-bit hex. value.

\<address> requires an access class.
```
Data.Long(D:0x40004058)   // D: indicates the generic access class Data
Data.LONG(ANC:0xC3FDC0C4) // ANC: indicates physical address (A) No Cache (NC)
```
### Check Contents of Address Range
```
// Script check_memory_range.cmm
Data.LOAD.Binary "range_correct" 0x40004000 /DIFF
IF FOUND()
(
 PRIVATE &s
 APPEND "test_protocol.txt"\
 FORMAT.STRing("Initialization of 0x40004000--0x4000401F failed ",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
 &s=TRACK.ADDRESS()
 APPEND "test_protocol.txt"\
 FORMAT.STRing("First difference found at: &s",70.,' ')
)
```
**TRACE32 command**
> **Data.LOAD.Binary \<filename> \<address> /DIFF**
>  Compare memory content at \<address> with contents of \<filename> and provide the result by the following TRACE32 functions:
**FOUND()**
**TRACK.ADDRESS()**

**TRACE32 functions**
> **FOUND()**
>   Returns TRUE if a difference was found.
> **TRACK.ADDRESS()**
>   Returns the address of the first difference.

**PRACTICE command**
> **PRIVATE {\<macro>}**
> Creates a private PRACTICE macro. 
> 
> PRACTICE macros start with & to make them different from variables from the program under debug.
> 
> Private PRACTICE macros are only visible inside the declaring block and are erased when the block ends.
> 
> In this example, the declaring block contains the instructions between > the round brackets.

To inspect all differences in detail the following script can be helpful

```
// Script check_memory_range_details.cmm
Data.LOAD.Binary "range_correct" VM:0x40004000
Data.Dump VM:0x40004000++0x1f /SpotLight
SCREEN.display
Data.COPY 0x40004000++0x1f VM:0x40004000
```

**TRACE32 commands**
> **Data.LOAD.Binary \<filename> VM:\<address>**
>   Load the contents of \<filename> to \<address> in the TRACE32 virtual memory. The TRACE32 Virtual Memory is memory on the host computer which can be displayed and modified with the same commands as real target memory.
> 
> **Data.dump VM:\<address_range> /SpotLight**
>   Display the contents of the TRACE32 Virtual Memory for the specified \<address_range>.The option **SpotLight** advises TRACE32 to mark changed memory locations if the window is displayed in TRACE32 PowerView.
> 
> **Data.COPY \<address_range> VM:\<address>**
>   Copy the content of \<address_range> to the TRACE32 Virtual Memory.

**PRACTICE commands**
If PRACTICE scripts are executed, the screen is only updated after a **PRINT** command.

> **SCREEN.display**
>   Advise TRACE32 to update the screen now.

### Check the Contents of Variables
```
// Script check_var.cmm
Var.IF stra2[1][0].pastruct5[0]!=0.
(
 APPEND "test_protocol.txt"\
 FORMAT.STRing("Initialization of stra2[1][0].pastruct5[0] failed",70.,' ')\
 FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
 APPEND "test_protocol.txt" "stra2[1][0].pastruct5[0]= "\
 %Decimal Var.Value(stra2[1][0].pastruct5[0])
)
```

**PRACTICE command**

> **Var.IF \<hll_condition>
> (
>  \<block>
> )**
>
>   Execute \<block> when the condition written in the programming language used is true (C, C++, …)

**PRACTICE function**
> **Var.VALUE(\<hll_expression>)** 
>   Returns the contents of the variable/variable component specified by \<hll_expression> as a hex. number.

### Record Formatted Variables
**Task of script:** Write the content of various variables to a file. Use the same formatting as **Var.View** command.

```
// Script record_var.cmm

PRinTer.FileType ASCIIE
PRinTer.OPEN "test_var.lst"
WinPos ,,,,,0
WinPrint.Var.View %String cstr1
WinPos ,,,,,0
WinPrint.Var.View %Open str2
WinPos ,,,,,0
WinPrint.Var.View vfloat
PRinTer.CLOSE
```
**TRACE32 commands**
> **PRinTer.FileType \<format>** 
>   Specify output \<format> for output file.
> 
> **PRinTer.Open \<filename>** 
>   Open file \<filename> for outputs.
> 
> **PRinTer.CLOSE** 
>   Close open output file.
> 
> **WinPrint.\<command>** 
>   Redirect the \<command> output to the specified file.
> 
> **WinPos ,,,,,0** 
>   By the default the TRACE32 \<command> and its output is redirected to the specified file.
> With this special WinPOS command only the \<command> output is  redirected to the specified file

### Record Variable as CSV
**Task of the script:** Write the contents of the variable vbfield to a file whenever the program execution stops at the specified breakpoint. Use CSV as output format.

```
// Script test_var_vbfield.cmm

Break.RESet
Var.Break.Set vbfield /Write
REPEAT 10.
(
 Go
 WAIT !STATE.RUN() 2.s
 IF STATE.RUN()
 (
 Break
 ENDDO
 )
 Var.EXPORT "vbfield_export.csv" vbfield /Append
)
```

**PRACTICE command**
> // Use expression of your programming language (C, C++, …) to specify write breakpoint
> **Var.Break.Set \<hll_expression> /Write**
> // Since the number of write breakpoints is limited, it is recommended to reset the current breakpoint settings
> **Break.RESet**
> // Append content of variables as CSV (Comma-Separated Values) to file \<filename>
> **Var.EXPORT \<filename> [{%\<format>}] {\<variable>} /Append**


```
;Example 1
RePeaT 100. PRINT "X"   ;Print X 100 times

;Example 2
RePeaT 50.              ;Print a * at the end of
(                       ;the previous line then
 PRINT %CONTinue "*"    ;wait 100 ms. Do this 50
 WAIT 100.ms            ;times.
)

;Example 3
LOCAL &code
AREA.Create A000 , 2100.      ;Change the number of
AREA.view A000                ;lines in the AREA window
                              ;to 2100
OPEN #1 "~~/t32.men" /Read    
RePeaT                        ;Read until the end of file
(
 READ #1 %LINE &code
 PRINT "&code"
)
WHILE EOF()==FALSE()
CLOSE #1
```

### Test Functions
**Task of the script:** Test functions with specified parameters and generate a test protocol.
```
// Script test_function.cmm

PRIVATE &result
&result=FORMAT.Decimal(8.,Var.VALUE(func5(2,6,9)))
APPEND "test_protocol.txt" \
FORMAT.STRing("func5(2,6,9) tested with result &result",70.,' ') \
FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
&result=FORMAT.Decimal(8.,Var.VALUE(func5(14,87,93)))
APPEND "test_protocol.txt" \
FORMAT.STRing("func5(14,87,93) tested with result &result",70.,' ') \
FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
&result=FORMAT.Decimal(8.,Var.VALUE(func5(44,44,44)))
APPEND "test_protocol.txt" \
FORMAT.STRing("func5(44,44,44) tested with result &result",70.,' ') \
FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())

```

**PRACTICE function**
> **FORMAT.Decimal(\<width>,\<value>)**
>   Formats a numeric expression to a decimal number and generates an output string with a fixed length of <width> with leading spaces.
>   Numeric expressions which need more characters than <width> for their loss-free representation aren’t cut.
> **Var.VALUE(\<function_call>)**
>   Returns the return value of called function as hex. number.

### Test Function with Parameter File
**Task of script:** Test functions, but provide function name, parameters and expected result by a parameter file. Generate a test protocol

```
// Script test_func_param.cmm
LOCAL &testfunc &correct_result
OPEN #1 "func_test.txt" /READ
WHILE TRUE()
(
  READ #1 &testfunc &correct_result
  IF "&testfunc"!=""
  (
    GOSUB perform_test
  )
  ELSE
  (
    CLOSE #1
    ENDDO
  )
)
ENDDO
perform_test:
(
  IF Var.VALUE(&testfunc)==&correct_result
  (
    APPEND "test_protocol.txt"\
    FORMAT.STRing("&testfunc=&correct_result",50.,' ')\
    FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
  )
  ELSE
  (
    PRIVATE &result
    &result=CONVert.HEXTOINT(Var.VALUE(&testfunc))
    APPEND "test_protocol.txt"\
    FORMAT.STRing("&testfunc failed with &result (&correct_result)",50.,' ')\
    FORMAT.UnixTime("c",DATE.UnixTime(),DATE.utcOffSet())
  )
  RETURN
)
```

Example for a parameter file.
```
func5(22,12,17) 56.
func5(14,87,93) 8105.
func5(44,44,44) 1980.
```

**PRACTICE command**
> **GOSUB \<label>** 
> Call a subroutine. The start of the subroutine is identified by \<label>.
> Labels must start in the first column of a line and end with a colon. No preceding white space allowed.
> Subroutines are usually located after the ENDDO statement.
> 
> **RETURN** 
>   Return from subroutine.
> 
> **LOCAL \<macro>**
>   Creates a local PRACTICE macro. 
>   Local PRACTICE macros are visible inside the declaring block, in all called scripts and in all called subroutines. 
They are erased when the declaring block ends. The declaring block here is the script itself.
> 
> **WHILE <condition>
> (
>  \<block>
> )**
>   Execute <block> as long as <condition> is true.
> 
> **OPEN #\<buffer_number> \<filename> /Read**
>   Open file \<filename> for reading. The file is referenced by its #\<buffer_number> by the following commands.
> 
> **READ #\<buffer_number> {\<macro>}** 
>   Read next line from file referenced by #\<buffer_number> into PRACTICE macros.
>   pace serves as parameter separators.
> 
> **CLOSE #\<buffer_number>**
>   Close file referenced by #\<buffer_number>.

**TRACE32 function**
> **CONVert.HEXTOINT(\<number>)**
>   Convert \<number> to a decimal number.

## Parameter Passing
### Pass Parameters to a PRACTICE Script or to a Subroutine
`do iotext.cmm PRINT "Please enter the address"`

> **ENTRY \<parlist>**
> The ENTRY command can be used to
> - Pass parameters to a PRACTICE script or to a subroutine
> - To return a value from a subroutine

**Example 1: Pass parameters to a PRACTICE script**

```
; PRACTICE script patch.cmm
; DO patch.cmm 0x1000++0xff 0x01 0x0a
ENTRY &address_range &data_old &data_new
IF "&address_range"==""
(
PRINT "Address range parameter is missing"
ENDDO
)
IF "&data_old"==""
(
PRINT "Old data parameter is missing"
ENDDO
)
IF "&data_new"==""
(
PRINT "New data parameter is missing"
ENDDO
)
Data.Find &address_range &data_old
IF FOUND()
(
Data.Set TRACK.ADDRESS() &data_new
Data.Print TRACK.ADDRESS()
DIALOG.OK "Patch done"
)
ELSE
DIALOG.OK "Patch failed"
ENDDO
```

**TRACE32 commands**
> **Data.FIND \<address_range> \<data>**
>   Search for \<data> in the specified \<address_range>.
>   RACE32 functions served:
>   - **FOUND()**
>   - **TRACK.ADDRESS()**
> 
> **FOUND()** 
>   Returns a boolean value to denote the results of the last **DATA.FIND** command.
> 
> **TRACK.ADDRESS()** 
>   Returns the address of the last successful search.

**Example 2: Pass parameters to a subroutine and get back the return value**

```
; PRACTICE script param.cmm

GOSUB test sieve++0x20 0x01                 //Pass parameter to subroutine
ENTRY &found                                //Get back the return value
PRINT "Data found at address " &found
ENDDO

test:
  ENTRY &address_range &data                //get parameter
  Data.Find &address_range &data
  &result=ADDRESS.OFFSET(TRACK.ADDRESS())
  RETURN &result                            // return value
```

**Example 3: Pass arguments as a single parameter to a subroutine and get back the return value**
```
; PRACTICE script param.cmm

GOSUB test sieve++0x20 0x01               //Pass parameter to subroutine
ENTRY &found                              //Get back the return value
PRINT "Data found at address " &found
ENDDO

test:
  ENTRY %LINE &values                     //Get parameter
  Data.Find &values
  &result=ADDRESS.OFFSET(TRACK.ADDRESS())
  RETURN &result                          // return value
```

Alternatively, the function **PARAMETERS** can be used to read parameters passed to a script or subroutine and, if the macros do not already exist in the current scope, assign them to automatically created **PRIVATE** macros. The parameters must be enclosed in quotation marks (").

**Example 4: Pass arguments using PARAMETERS to a subroutine and get back the return value**

```
; PRACTICE script param.cmm
GOSUB test "sieve++0x20" "0x01"           //Pass parameters to subroutine
ENTRY &found                              //Get back the return value
PRINT "Data found at address " &found
ENDDO
test:
  PARAMETERS &address_range &data         //Get parameter
  Data.Find &address_range &data
  &result=ADDRESS.OFFSET(TRACK.ADDRESS())
  RETURN &result                          // return value
```

**Example 5: Passing arguments via the command line.**
If the values for **&data_old** and **&data_new** are not provided default values are assigned

```
; PRACTICE script patch_not_all.cmm
; Call with:
; DO patch_not_all.cmm "<address_range>" "<data_old>" "<data_new>"
PARAMETERS &address_range &data_old &data_new
IF "&data_old"==""
(
 &data_old=0x00
)
IF "&data_new"==""
(
 &data_new=0xFF
)
DATA.Find &address_range &data_old
IF FOUND()
(
 Data.Set TRACK.ADDRESS() &data_new
 Data.Print TRACK.ADDRESS()
 DIALOG.OK "Patch Done"
)
ELSE
(
 DIALOG.OK "Patch Failed."
)
ENDDO
```

Passing parameters into scripts like this means that the user must know the order in which each parameter must be specified. A more flexible approach is to use the function **STRing.SCANAndExtract()**.

> **STRing.SCANAndExtract("\<source>", "\<search>", "\<default>")**
> The \<source> string is searched for the pattern \<search> and if it is found the character sequence after and up to the next blank space is assigned to the PRACTICE macro. If the \<search> string is not found the value \<default> is assigned instead.

```
;Call this script with:
; do arg_test.cmm ADDRESS=<address> DATA=<data> COUNT=<count>

;Read all command line arguments as a single line
ENTRY %LINE &p

;Open an AREA window and clear it for displaying the results
AREA.view
AREA.CLEAR

;If the ADDRESS argument is not provided, print a usage message
IF STRing.SCAN("&p","ADDRESS=",0)==-1
(
 GOSUB print_args
)

;Extract the arguments into the correct PRACTICE variables, returning the 
;default value if the user does not specify something.
&addr=STRing.SCANAndExtract(STRING.UPpeR("&p"), "ADDRESS=", "0x12000")
&dvalue=STRing.SCANAndExtract(STRING.UPpeR("&p"),"DATA=", "0x00")
&count=STRing.SCANAndExtract(STRING.UPpeR("&p"),"COUNT=","5.")
PRINT "Extracted Arguments:"
PRINT "ADDRESS = &addr"
PRINT "DATA = &dvalue"
PRINT "COUNT = &count"
ENDDO

print_args:
  PRINT "Usage:"
  PRINT
  PRINT "do arg_test.cmm ADDRESS=<address> DATA=<data> COUNT=<count>"
  PRINT "Where:"
  PRINT " <address> is the address to write <data> to."
  PRINT " <count> is the number of times to write the <data> value."
  PRINT
  PRINT "Script will complete using default values."
  PRINT
RETURN
```

> **STRing.UPpeR(\<string>)**
>   Returns \<string> in upper case

**Example 6: Call a subroutine to verify a checksum for a given range.**

```
; PRACTICE script checksum.cmm
PRIVATE &result
AREA.view
AREA.CLEAR
DATA.LOAD.BINARY checksum.bin 0x40000000
GOSUB verify_checksum "0x9DFF4B6A" "0x40000000++0x2fff"
RETURNVALUES &result
IF &result
 PRINT %COLOR.GREEN "First checksum verification passed"
ELSE
 PRINT %COLOR.RED "First checksum verification failed"
WAIT 1.s
; Modify memory
Data.Set 0x40000100 %Long 0x12345678
GOSUB verify_checksum "0x9DFF4B6A" "0x40000000++0x2fff"
RETURNVALUES &result
IF &result
 PRINT %COLOR.GREEN "Second checksum verification passed"
ELSE
 PRINT %COLOR.RED "Second checksum verification failed"
ENDDO
verify_checksum:
(
 PRIVATE &result
 PARAMETERS &expected_checksum &address_range
 Data.SUM &address_range /CRC32
 &result=(Data.SUM()==&expected_checksum)
 RETURN "&result"
)
```

PRIVATE macros that are out scope are printed in gray in the PRACTICE stack.

**TRACE32 commands**

> **AREA.view** 
>   Display TRACE32 message area.
> **AREA.CLEAR** 
>   Clear TRACE32 message area.
> **Data.Set \<address> \<value>** 
>   Write \<value> to \<address>.
> **Data.SUM \<address_range> /CRC32** 
>   Calculate CRC32 checksum for specified \<address_range>.

**PRACTICE command**
> **PRINT %COLOR.\<color> {\<data>}**
>   Print the specified data in the specified color to the TRACE32 message area.

**TRACE32 function**
> **Data.SUM()** 
>   Returns checksum calculated by the Data.SUM command as hex. number.

### PARAMETERS/RETURNVALUES vs. ENTRY
Using the PRACTICE commands **PARAMETERS/RETURNVALUES** solve the following issues known for the **ENTRY** command.

**1. Called script/subroutine may unintentionally overwrite LOCAL macros of the caller(s), if the macros used with the ENTRY command are not explicitly created.**
  
```
// Script entry_issue1.cmm
AREA.view
AREA.CLEAR

LOCAL &x
&x=0x25
PRINT "Value of &"+"x before subroutine level 1 = " &x
GOSUB level1 0x55 
PRINT "Value of &"+"x after subroutine level 1 = " &x
ENDDO

level1:
(
 ENTRY &x
 RETURN
)
```

after goto level1, x is changed to 0x55

```
// Script entry_issue1_params.cmm
AREA.view
AREA.CLEAR
LOCAL &x
&x=0x25
PRINT "Value of &"+"x before subroutine level 1 = " &x GOSUB level1 "0x55" 
PRINT "Value of &"+"x after subroutine level 1  = " &x ENDDO

level1:
(
  PARAMETERS &x   RETURN
)
```

Notice that the **LOCAL** macros of the caller(s) are out of scope for the **PARAMETERS** command. So a new **PRIVATE** macro &x is created.

**2. Whitespace as parameter delimiter.**
The **ENTRY** command regards whitespace as a parameter delimiter. If one of the parameters for the called script/subroutineis a string containing whitespaces anditis not quoted, the scriptis stopped by an error, because not enough macros are provided to take all parameters.

```
// Script entry_issue2.cmm
PRIVATE &x &y &z
&x="My entry issue"
&y=77.
&z=TRUE()
GOSUB level1 &x &y &z
ENDDO
level1:
(
 PRIVATE &r &s &t
 ENTRY &r &s &t
 RETURN
)
```

**3. The quote issue**
If the string containing whitespaces is quoted, the quotes become part of the string if the **ENTRY** command is used.

```
// Script entry_issue3.cmm
PRIVATE &x &y &z
&x="My entry issue"
&y=77.
&z=TRUE()
GOSUB level1 "&x" &y &z   // &x is quoted!
ENDDO
level1:
(
 PRIVATE &r &s &t
 ENTRY &r &s &t
 &r=&r                    // Removes quotes from string
 RETURN
)
```

The **PARAMETERS** command solves both issues.

```
// Script entry_issue3_params.cmm
PRIVATE &x &y &z
&x="My entry issue"
&y=77.
&z=TRUE()
GOSUB level1 "&x" "&y" "&z"
ENDDO
level1:
(
 PARAMETERS &r &s &t
 RETURN
)
```