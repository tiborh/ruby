# ruby
Ruby examples of a starter in the language.

## next to explore:

* map
* enumerators
* strings from book: for new info/features

## Closures

A closure is a first-class function that has lexical scope.

* It can be treated like a variable, i.e. assigned to another variable, passed as a method argument, etc.
* It remembers the values of all the variables that were in scope when the function was defined and is able to access these variables even if it is executed in a different scope.

### Types of Closures

* Procs
* Lambdas

__Note:__ #lambda is a Kernel method that creates a Proc object which behaves slightly differently to other Proc objects.

#### Difference between the two

* Returning
  * lambda returns to parent
  * proc returns to the parent scope of the calling method (if it has a return)
* Argument checking
  * lambda complains if less arguments than needed
  * proc takes missing arg as `nil`

## `File.open` modes

`File.open("filename(path)","mode")`

|Mode  | Explanation                                              |
|:----:|----------------------------------------------------------|
| "r"  | Read-only, starts at beginning of file  (default mode).  |
| "r+" | Read-write, starts at beginning of file.                 |
| "w"  | Write-only, truncates existing file to zero length or<br /> creates a new file for writing. |
| "w+" | Read-write, truncates existing file to zero length or<br /> creates a new file for reading and writing. |
| "a"  | Write-only, each write call appends data at end of file.<br /> Creates a new file for writing if file does not exist. |
|"a+"  | Read-write, each write call appends data at end of file.<br /> Creates a new file for reading and writing if file does<br /> not exist. |

### Mode modifications

The following can be used after the modifiers of the pervious table.

| Modifier | Explanation |
|:--------:|-------------|
| "b"      | Binary file mode Suppresses EOL <-> CRLF conversion on<br /> Windows. And sets external encoding to ASCII-8BIT unless<br /> explicitly specified.
| "t"      | Text file mode

## Useful resources:

* https://www.ruby-lang.org/en/documentation/ (several approaches to the language)
* https://www.safaribooksonline.com/library/view/the-ruby-way/9780132480352/ (a good way to start for those familiar with other languages)
* https://www.tutorialspoint.com/ruby/ (good as a quick overview)
* https://ruby-doc.org/ (ruby documentation)
* http://rdoc.sourceforge.net/ (RDoc in SourceForge)
* http://rdoc.sourceforge.net/doc/index.html (RDOC samples)
* http://ruby-doc.org/core/classes/IO.html#method-c-new (for `File.open` modes)
* https://www.sitepoint.com/closures-ruby/ (a simple intro to proc & lambda)
* plus lots of references are included in the example files
