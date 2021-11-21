require_relative('Market')
require_relative('Product')

product = Product.new
product.name = 'Chocolate'
product.price = 6.90

market = Market.new(product)

print market.buy
