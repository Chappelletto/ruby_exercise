# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# /XXX

=begin
if Gem.win_platform? && ARGV[0]
  argument = argument.encode('UTF-8')
  #argument = argument.encode(ARGV[0].encoding, "cp1251").encode('UTF-8')
end
=end 