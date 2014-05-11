class MoneyCalculator
	attr_accessor :one, :five, :ten, :twenty, :fifty, :hundred, :five_hundred, :thousand, :total, :barya, :bill
  def initialize(ones, fives, tens, twenties, fifties, hundreds, five_hundreds, thousands)
		@total = ones.to_i + (fives.to_i*5) + (tens.to_i*10) + (twenties.to_i*20) + (fifties.to_i*50) + (hundreds.to_i*100) + (five_hundreds.to_i*500) + (thousands.to_i*1000)
  end
	
	def change(amt)
		@bill = amt
		@amount = @total.to_i - @bill.to_f
		@ch_thou = (@amount/1000).to_i
		@ch_fhun = ((@amount - @ch_thou*1000)/500).to_i
		@ch_hund = ((@amount - @ch_thou*1000 - @ch_fhun*500)/100).to_i
		@ch_fift = ((@amount - @ch_thou*1000 - @ch_fhun*500 - @ch_hund*100)/50).to_i
		@ch_twen = ((@amount - @ch_thou*1000 - @ch_fhun*500 - @ch_hund*100 - @ch_fift*50)/20).to_i
		@ch_ten = ((@amount - @ch_thou*1000 - @ch_fhun*500 - @ch_hund*100 - @ch_fift*50 - @ch_twen*20)/10).to_i
		@ch_five = ((@amount - @ch_thou*1000 - @ch_fhun*500 - @ch_hund*100 - @ch_fift*50 - @ch_twen*20 - @ch_ten*10)/5).to_i
		@ch_one = ((@amount - @ch_thou*1000 - @ch_fhun*500 - @ch_hund*100 - @ch_fift*50 - @ch_twen*20 - @ch_ten*10 - @ch_five*5)/1).to_i
		@barya = {:thousands => @ch_thou, :five_hundreds => @ch_fhun, :hundreds => @ch_hund, :fifties => @ch_fift, :twenties => @ch_twen, :tens => @ch_ten, :fives => @ch_five, :ones => @ch_one, :amount => @amount, :bill => @bill}			
	end
		# each parameter represents the quantity per denomination of money
    # these parameters can be assigned to instance variables and used for computation
    # add a method called 'change' that takes in a parameter of how much an item costs
    # and returns a hash of how much change is to be given
    # the hash will use the denominations as keys and the amount per denomination as values
    # i.e. {:fives => 1, fifties => 1, :hundreds => 3}
end
