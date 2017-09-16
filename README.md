# ruby
Ruby examples of a starter in the language.

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
* plus lots of references are included in the example files
