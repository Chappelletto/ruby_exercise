massiv = []
massiv_2 = []

hash = {peter: 'mart', egor: 'bazh', evgen: 'kuz'} 

hash.each_value {|value| massiv_2.push value} 
hash.each_key {|key| massiv.push key} 

pp hash

pp massiv

pp massiv_2