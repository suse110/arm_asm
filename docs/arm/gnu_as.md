ELF version

## .size name , expression
* This directive sets the size associated with a symbol name. 
* The size in bytes is computed from expression which can make use of label arithmetic. 
* This directive is typically used to set the size of function symbols.
```
.size  Reset_Handler, .-Reset_Handler
```

## .equ symbol, expression
* This directive sets the value of symbol to expression. It is synonymous with ‘.set’

## .set symbol, expression
* Set the value of symbol to expression. 
* This changes symbol’s value and type to conform to expression. 
* If symbol was flagged as external, it remains flagged. 
* You may .set a symbol many times in the same assembly.
* If you .set a global symbol, the value stored in the object file is the last value stored into it.


## .skip size , fill
* This directive emits size bytes, each of value fill. 
* Both size and fill are absolute expressions.
* If the comma and fill are omitted, fill is assumed to be zero. 
* This is the same as ‘.space’.

## .space size , fill
* This directive emits size bytes, each of value fill. 
* Both size and fill are absolute expressions.
* If the comma and fill are omitted, fill is assumed to be zero. 
* This is the same as ‘.skip’.

## .type name , type description
* This sets the type of symbol name to be either a function symbol or an object symbol.
* There are five different syntaxes supported for the type description field, in order to provide compatibility with various other assemblers.
* Because some of the characters used in these syntaxes (such as ‘@’ and ‘#’) are comment characters for some architectures, some of the syntaxes below do not work on all architectures. 
* The first variant will be accepted by the GNU assembler on all architectures so that variant should be used for maximum portability, if you do not need to assemble your code with other assemblers.
* The syntaxes supported are:
  * .type \<name> STT_<TYPE_IN_UPPER_CASE>
  * .type \<name>,#\<type>
  * .type \<name>,@\<type>
  * .type \<name>,%\<type>
  * .type \<name>,"\<type>"

* The types supported are:
  * STT_FUNC function 
    * Mark the symbol as being a function name.
  * STT_GNU_IFUNC gnu_indirect_function
    * Mark the symbol as an indirect function when evaluated during reloc processing.(This is only supported on Linux targeted assemblers)
  * STT_OBJECT object 
    * Mark the symbol as being a data object.
  * STT_TLS tls_object
    * Mark the symbol as being a thead-local data object.
  * STT_COMMON common 
    * Mark the symbol as being a common data object.
  * STT_NOTYPE notype 
    * Does not mark the symbol in any way. It is supported just for completeness.
* Note: Some targets support extra types in addition to those listed above
* example:
```
    .type  g_pfnVectors, %object
```

## .section name [, "flags"[, @type[,flag_specific_arguments]]]

The optional **flags** argument is a quoted string which may contain any combination of the following characters:
```
.section  .isr_vector,"a",%progbits
.section  .text.Default_Handler,"ax",%progbits
.section  .text.Reset_Handler
```
* a section is allocatable
* w section is writable
* x section is executable
* M section is mergeable
* S section contains zero terminated strings
* G section is a member of a section group
* T section is used for thread-local-storage

The optional **type** argument may contain one of the following constants:
* @progbits 
  * section contains data
* @nobits 
  * section does not contain data (i.e., section only occupies space)
* @note 
  * section contains data which is used by things other than the program
* @init_array 
  * section contains an array of pointers to init functions
* @fini_array 
  * section contains an array of pointers to finish functions
* @preinit_array 
  * section contains an array of pointers to pre-init functions

Many targets only support the first three section types.

Note on targets where the @ character is the start of a comment (eg ARM) then another character is used instead. For example the ARM port uses the % character.

> If flags contains the M symbol then the type argument must be specified as well as an extra argument—entsize—like this:
```
  .section name , "flags"M, @type, entsize
```
  * Sections with the M flag but not S flag must contain fixed size constants, each entsize octets long. 
  * Sections with both M and S must contain zero terminated strings where each character is entsize bytes long. The linker may remove duplicates within sections with the same name, same entity size and same flags. entsize must be an absolute expression. For sections with both M and S, a string which is a suffix of a larger string is considered a duplicate. Thus "def" will be merged with "abcdef"; A reference to the first "def" will be changed to a reference to "abcdef"+3.

> If flags contains the G symbol then the type argument must be present along with an additional field like this:
```
.section name , "flags"G, @type, GroupName[, linkage]
```
* The GroupName field specifies the name of the section group to which this particular section belongs. The optional linkage field can contain:
  * comdat 
    * indicates that only one copy of this section should be retained
  * .gnu.linkonce   
    * an alias for comdat

>  if both the M and G flags are present then the fields for the Merge flag should come first, like this:
```
.section name , "flags"MG, @type, entsize, GroupName[, linkage]
```

> If no flags are specified, the default flags depend upon the section name. If the section name is not recognized, the default will be for the section to have none of the above flags:
* it will not be allocated in memory, nor writable, nor executable. The section will contain data.


## .thumb_set
* This performs the equivalent of a .set directive in that it creates a symbol which is an alias for another symbol (possibly not yet defined). 
* This directive also has the added property in that it marks the aliased symbol as being a thumb function entry point, in the same way that the .thumb_func directive does
```
.weak NMI_Handler
.thumb_set NMI_Handler,Default_Handler
```

## .code [16|32]
* This directive selects the instruction set being generated. 
* The value 16 selects Thumb, with the value 32 selecting ARM.

## .thumb 
* This performs the same action as .code 16.

## .thumb_func
* This directive specifies that the following symbol is the name of a Thumb encoded function. 
* This information is necessary in order to allow the assembler and linker to generate correct code for interworking between Arm and Thumb instructions and should be used even if interworking is not going to be performed. 
* The presence of this directive also implies .thumb 
* This directive is not neccessary when generating EABI objects. 
* On these targets the encoding is implicit when generating Thumb code


## .ascii "string". . .
* .ascii expects zero or more string literals (see Section 3.6.1.1 [Strings], page 27) separated by commas. 
* It assembles each string (with no automatic trailing zero byte) into consecutive addresses.

