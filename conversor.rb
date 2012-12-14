class Conversor

	@@meses = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

	def self.decimal_binario(numero)
		numero.to_s(2)
	end

	def self.binario_decimal(binario)
		binario.to_i(2)
	end

	def self.decimal_data(numero)
		 binario = "%023d" % self.decimal_binario(numero)
		 ano = binario_decimal(binario[0..13])
		 mes = binario_mes(binario[14..17])
		 dia = binario_decimal(binario[18..22])

		 "#{dia} #{mes} #{ano}"
	end

	def self.binario_mes(binario)		
		@@meses[self.binario_decimal(binario)-1]	
	end
end