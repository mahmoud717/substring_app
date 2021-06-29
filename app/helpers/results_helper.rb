module ResultsHelper
    def LongestSubstring(s)
        return s if s.length == 1
        startOfWindow = 0
        currentPosition = 0
        biggest =[]
        arr = []  
        s = s.chars
        while currentPosition < s.length
            if arr.include?(s[currentPosition]) 
                arr.delete(s[startOfWindow])
                startOfWindow += 1
            else   
                arr.push(s[currentPosition])
                currentPosition += 1
                if biggest.length <  arr.length
                biggest = arr.dup 
                end
            end
        end
    biggest.join('')
    end
end
