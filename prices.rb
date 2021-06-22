# Add prices
def total(prices)
    amount = 0
    index = 0
    while index < prices.length
        amount += prices[index]
        index += 1
    end
    amount
end

prices = [3.99, 25.00, 8.99]

puts format("%.2f", total(prices))

# Refund
def refund(prices)
    amount = 0
    index  = 0
    while index < prices.length
        amount -= prices[index]
        index += 1
    end
    amount
end

puts format("%.2f", refund(prices))

def show_discounts(prices)
    index = 0
    while index < prices.length
        amount_off = prices[index] / 3.0
        puts format("Your discount: $%.2f", amount_off)
        index += 1
    end
end

show_discounts(prices)

### Assignment: answer the following questions:
# 1. Which version of the code do you like better - the code in the last commit (page 165) or the previous one (page 164)? Why?

# 2. Is there ever a good reason to repeat yourself in code (i.e. not have DRY code)? Give an example that justifies your answer.