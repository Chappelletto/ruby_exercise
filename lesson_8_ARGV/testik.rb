# encoding utf-8

name = ARGV[0]

if Gem.win_platform? && ARGV[0]
  argument = argument.encode('UTF-8')
  #argument = argument.encode(ARGV[0].encoding, "cp1251").encode('UTF-8')
end
