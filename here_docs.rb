#!/usr/bin/env ruby

# source: https://en.wikibooks.org/wiki/Ruby_Programming/Here_documents

name = 'Charlie Brown'

# default is double quote mode:
puts <<QUIZ
Student: #{name}

1.\tQuestion: What is 4+5?
\tAnswer: The sum of 4 and 5 is #{4+5}
QUIZ

# so this will do the same:
puts <<"QUIZ"
Student: #{name}

1.\tQuestion: What is 4+5?
\tAnswer: The sum of 4 and 5 is #{4+5}
QUIZ

# different behaviour:
puts <<'QUIZ'
Student: #{name}

1.\tQuestion: What is 4+5?
\tAnswer: The sum of 4 and 5 is #{4+5}
QUIZ
