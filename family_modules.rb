module Wolfstein
  class Family
    attr_reader :fname,:sname
    def initialize(fname)
      @fname = fname
      @sname = "Wolfstein"
    end
    def to_s
      @fname.to_s + " " + @sname.to_s
    end
    def to_str
      self.to_s
    end
  end
end

module Steinberg
  class Family
    attr_reader :fname,:sname
    def initialize(fname)
      @fname = fname
      @sname = "Steinberg"
    end
    def to_s
      @fname.to_s + " " + @sname.to_s
    end
    def to_str
      self.to_s
    end
  end
end
