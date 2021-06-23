def do_something_with_every_item(array, operation)

    if operation == "total" or operation == "refund"
        amount = 0
    end
    index = 0
    while index < array.length

        if operation == "total"
            amount += array[index]
        elsif operation == "refund"
            amount -= array[index]
        elsif operation == "show discounts"
            amount_off = array[index] / 3.0
            puts format("Your discount: $%.2f", amount_off)
        end

        index += 1
    end

    if operation == "total" or operation == "refund"
        return amount
    end

end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", do_something_with_every_item(prices, "total"))

puts format("%.2f", do_something_with_every_item(prices, "refund"))

puts do_something_with_every_item(prices, "show discounts")

### Assignment: answer the following questions:
# 1. Which version of the code do you like better - the code in the last commit (page 165) or the previous one (page 164)? Why?
#
# A: I prefer the previous version (p. 164) because it was more readable and looked cleaber, even if there were some repetitions.

# 2. Is there ever a good reason to repeat yourself in code (i.e. not have DRY code)? Give an example that justifies your answer.
#
# A: While there are multiple reasons for preferring DRY code, there are also cases in which it might not be necessary. A case that comes to mind is when two functions are very similar to each other, but they are not *fundamentally* the same.
# For example, if I had to calculate the area of different geometric shapes, I could create a single function that covers all possibilities (for example by taking the shape name as a parameter), but it would be probably best to write different functions that are similar, but not the exactly the same. This would be very similar to the example provided in the book, where trying to abstract the code more actually made it uglier.