module FILEMOD
  def write_file_stuff
    puts "__FILE__", __FILE__
    puts "__FILE__.split(\"/\").last", __FILE__.split("/").last
    puts "$0",$0
    puts "$PROGRAM_NAME",$PROGRAM_NAME
  end
end
