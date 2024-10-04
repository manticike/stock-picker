def stock_picker(stock_prices)
  min_price = stock_prices[0]
  best_buy_day = 0
  best_sell_day = 0
  max_profit = 0

  stock_prices.each_with_index do |current_price, day_index|
    # Update the minimum price and buy day
    if current_price < min_price
      min_price = current_price
      best_buy_day = day_index
    end

    # Calculate profit and check if it's better than the current max_profit
    profit = current_price - min_price
    if profit > max_profit && day_index < best_buy_day
      max_profit = profit
      best_sell_day = day_index
    end
  end

  [best_buy_day, best_sell_day]
end

trading_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
puts "The best days to buy and sell a stock are days: #{stock_picker(trading_prices)}"
