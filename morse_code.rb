class Morse
    Code = {
        "A"	=> ".-",
        "B"	=>  "-..."	,
        "C"  =>  "-.-."	,
        "D" =>  "-.."	,
        "E" =>  "."	,
        "F" =>  "..-.",
        "G" =>  "--."	,
        "H" =>  "....",	
        "I" =>  ".."	,
        "J" =>	".---",	
        "K" =>	"-.-"	,
        "L" =>	".-..",
        "M" =>	"--"	,
        "N" =>	"-."	,
        "O" =>	"---"	,
        "P" =>	".--."	,
        "Q" =>	"--.-"	,
        "R" =>	".-.",
        "S" =>	"..."	,
        "T" =>	"-"	,
        "U" =>	"..-"	,
        "V" =>	"...-"	,
        "W" =>	".--"	,
        "X" =>  "-..-" ,
        "Y" =>	"-.--",	
        "Z" =>	"--..",
        "0" =>  "-----"	,
        "1" =>  ".----"	,
        "2" =>  "..---"	,
        "3" =>  "...--"	,
        "4" =>  "....-"	,
        "5" =>	".....",
        "6" =>  "-...."	,
        "7" =>  "--..."	,
        "8" =>  "---.."	,
        "9" =>	"----."
    }

    def encodeWord(morseString)
        morseArr = morseString.upcase.split ("")        
        result  = ""
        morseArr.each do |item|
            result += " "
            result += Code[item]
        end    
        result     
     end
   
    def decodeMorseWord(morseStr)
        morseArr = morseStr.split(" ")
        result = ""
        morseArr.each do |item|            
            result += Code.key(item)
        end
        result         
    end  

     def decodeMorseString(str)
        morseArr = str.split("   ")    
        result = ""
        morseArr.each do |item|
            result += " "
           result += decodeMorseWord(item)
        end
        result
     end

end
    


obj = Morse.new
puts obj.decodeMorseString("-- -.--   -. .- -- .")