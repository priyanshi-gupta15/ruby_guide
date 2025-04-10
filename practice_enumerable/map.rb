# Capitalize all names in ["alice", "bob", "charlie"].

# Square each number in [2, 4, 6, 8].

a=[10,20,200]
puts a.map{|n| n*n}


puts ["alice", "bob", "charlie"].map(&:upcase)