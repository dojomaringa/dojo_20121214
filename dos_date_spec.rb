require_relative "conversor"

describe "Dos Date" do

	context "Conversor Decimal x Binario" do

		it "Dado um decimal 1 retorna binario 1" do
			Conversor.decimal_binario(1).should == "1"
		end

		it "Dado um decimal 2 retorna binario 10" do
			Conversor.decimal_binario(2).should == "10"
		end

		it "Dado um decimal 1018956 binario 11111000110001001100" do
			Conversor.decimal_binario(1018956).should == "11111000110001001100"
		end
	end

	context "Conversor Binario x Decimal" do
		it "Dado um binario 11111000110001001100 decimal 1018956" do
			Conversor.binario_decimal("11111000110001001100").should == 1018956
		end

		it "Dado um binario 1001001100 decimal 588" do
			Conversor.binario_decimal("1001001100").should == 588
		end
	end

	context "Binario para mes" do
		it "001 converte para January" do
			Conversor.binario_mes("001").should == "January"
		end

		it "002 converte para February" do
			Conversor.binario_mes("010").should == "February"
		end

	end

	context "Conversor Decimal para Data" do
		it "Dado um decimal 1018956 retorna Data 12 February 1990" do
			Conversor.decimal_data(1018956).should == "12 February 1990"
		end

		it "Dado um decimal 802507 retorna Data 11 June 1567" do
			Conversor.decimal_data(802507).should == "11 June 1567"
		end

		it "Dado um decimal 1029012 retorna Data 20 December 2009" do
			Conversor.decimal_data(1029012).should == "20 December 2009"
		end

		it "Dado um decimal 588 retorna Data 12 February 1" do
			Conversor.decimal_data(588).should == "12 February 1"
		end
	end

end
