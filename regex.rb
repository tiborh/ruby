#!/usr/bin/env ruby

puts "simplest, searches in string:"
puts "some matching content"[/match/]

puts "when nothing is found:"
print "some matching content"[/miss/],"(nil not printed)\n"

puts "match examines the first match:"
print '"abbccc az"[/az*/]: ',"abbccc az"[/az*/],"\n"
print '"bbccc az"[/az*/]: ',"bbccc az"[/az*/],"\n"

# catching the difference
atxt = "onek is not oney\nonet is not ones"
puts atxt[/^one.?/]             # "onek"
puts atxt[/^onet/]              # "onet"
puts atxt[/\Aone.?/]            # "onek"
puts atxt[/\Aonet/]             # nil
puts atxt[/one.?\Z/]            # ones
puts atxt[/one.?$/]             # oney

btxt = "a b aa bb ab ba aba bab baba abba baab abab"
puts btxt[/(a)(b)\2\1/]         # abba
puts btxt[/(a)(b)\1\2/]         # abab
puts btxt[/(b)(a)\1\2/]         # baba
# now, the funny thing:
print btxt.scan(/(a)\S*\1/),"\n"      # [["a"], ["a"], ["a"], ["a"], ["a"], ["a"]]
print btxt.scan(/((a)\S*\2)/),"\n"    # [["aa", "a"], ["aba", "a"], ["aba", "a"], ["abba", "a"], ["aa", "a"], ["aba", "a"]]
# a cryptic solution:
print btxt.to_enum(:scan,/(a)\S*\1/).map{$&},"\n" # ["aa", "aba", "aba", "abba", "aa", "aba"]
# source: https://stackoverflow.com/questions/80357/match-all-occurrences-of-a-regex


