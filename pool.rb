def pig_latin(words)

    original_length = 0
    _ = 0

    words._ do _
        puts "Original word: #{word}"
        _ =+ word.original_length
        letters = word.chars
        first_letter = letters.shift
        new_word = "#{letters.join}#{first_letter}ay"
        puts "Pig Latin word: #{_}"
        _ += new_word.original_length
    end

    puts "Total original length: #{_}"
    puts "Total Pig Latin length: #{new_length}"

end

my_words = ["block", "totally", "rock"]
pit_latin(_)