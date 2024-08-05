def stock_picker(prices)
  # Initialize variables to store the best days and the minimum price encountered
  best_buy_day = 0
  best_sell_day = 0
  min_price_day = 0
  max_profit = 0
  
  # Iterate over the prices array starting from the second day
  prices.each_with_index do |price, day|
    # Calculate potential profit if sold on the current day
    potential_profit = price - prices[min_price_day]

    # Update the best days and max profit if the potential profit is higher
    if potential_profit > max_profit
      max_profit = potential_profit
      best_buy_day = min_price_day
      best_sell_day = day
    end

    # Update the minimum price day if the current price is lower than the recorded minimum
    if price < prices[min_price_day]
      min_price_day = day
    end
  end
  
  [best_buy_day, best_sell_day]
end