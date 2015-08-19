# Reverse Engineering Hash's "keys" and "values" methods

def rev_engr_hash_kv(hash={})
  exit if hash.empty? || hash.nil?
  arraykey = []
  arraykey_as_str = []
  arrayval = []
  hash.each {|k,v|
    arraykey << k
    arraykey_as_str << k.to_s
    arrayval << v
  }
  puts "Keys: #{arraykey}"
  puts "Keys as string: #{arraykey_as_str}"
  puts "Values: #{arrayval}"
end

bc_cities_population = {
  vancouver:2135201,
  victoria:316327,
  abbotsford:149855,
  kelowna:141767,
  nanaimo:88799,
  white_rock:82368,
  kamloops:73472,
  chilliwack:66382
}

rev_engr_hash_kv bc_cities_population
