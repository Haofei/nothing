def length_of_longest_substring(s)
    m = {}
    max = 0
    position = -1
    0.step(s.length-1, 1) do |i|
      if (m[s[i]] && position < m[s[i]])
        position = m[s[i]]
      end
      if( i - position > max) 
        max = i - position
      end
      
      m[s[i]] = i
    end
    max
end