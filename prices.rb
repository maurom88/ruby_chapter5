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

# 2. Is there ever a good reason to repeat yourself in code (i.e. not have DRY code)? Give an example that justifies your answer.