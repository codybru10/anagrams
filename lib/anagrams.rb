class String
  define_method(:anagram?) do |testString|
    result = ""
    resultArray = []
    objectArray = self.split("")
    testwordArray = testString.split(" ")

    testwordArray.each() do |testWord|
      splitWordArray = testWord.split("")

      if objectArray.length == splitWordArray.length
        objectArray.each() do |letter|
          if splitWordArray.include?(letter) == true
            splitWordArray.delete(letter)
          end
        end
      end

      if splitWordArray == []
        resultArray.push(testWord)
      end
    end
    result = resultArray.join(" ")
    result
  end
end
