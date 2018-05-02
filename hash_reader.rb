def hash_reader(fn = "hash_source.txt")
  out_hash = Hash.new(0)
  text = File.open(fn).read
  text.each_line do |line|
    spl = line.split
    if (spl.length >= 2)
      out_hash[spl[0]] = spl[1].to_i
    end
  end
  return out_hash
end

