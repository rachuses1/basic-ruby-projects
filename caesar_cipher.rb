def caesar_cipher(string, shift)
  new_string = string.bytes 
  new_string = new_string.map{|char| 
  if char < 65
    char
  elsif (char + shift).between?(65,90) || (char + shift).between?(97,122)
    char + shift
  else
    char + shift - 26
  end  
}
  puts new_string.pack("C*")
end

caesar_cipher("What a string!",5)