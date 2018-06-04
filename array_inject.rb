#!/usr/bin/env ruby
# coding: utf-8

a = (1..5).to_a
print a,"\n"
an_sum = a.inject { |sum,n| sum+n }
print "sum: ",an_sum,"\n"
an_prod = a.inject { |prod,n| prod*n }
print "product: ",an_prod,"\n"

def custom_inject(array, default = nil)
  accumulator = default || array[0]
  
  array.each do |element|
    accumulator = accumulator + element
  end
  
  accumulator
end

puts "summary with custom_inject method: #{custom_inject(a,0)}"

puts "hash building with inject:"

puts [4, 8, 15, 16, 23, 42].inject({}) { |a, i| a.update(i => i) }

sample_text = "When the Editor of the following volumes published, about two years since, the work called the “Antiquary,” he announced that he was, for the last time, intruding upon the public in his present capacity. He might shelter himself under the plea that every anonymous writer is, like the celebrated Junius, only a phantom, and that therefore, although an apparition, of a more benign, as well as much meaner description, he cannot be bound to plead to a charge of inconsistency. A better apology may be found in the imitating the confession of honest Benedict, that, when he said he would die a bachelor, he did not think he should live to be married. The best of all would be, if, as has eminently happened in the case of some distinguished contemporaries, the merit of the work should, in the reader's estimation, form an excuse for the Author's breach of promise. Without presuming to hope that this may prove the case, it is only further necessary to mention, that his resolution, like that of Benedict, fell a sacrifice, to temptation at least, if not to stratagem."

def occurrences(str)
  str.downcase.split(/\W+/).inject(Hash.new(0)) { |a,i| a[i] += 1; a }.sort_by { |k,v| v}.reverse.to_h
end 

puts "sample_text:\n #{sample_text}"

puts "frequency list of sample_text:\n#{occurrences(sample_text)}"
