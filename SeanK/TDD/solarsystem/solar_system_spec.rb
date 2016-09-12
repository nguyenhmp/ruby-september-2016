require_relative 'solar_system'
RSpec.describe Planet do
	describe 'initialization' do 
		before do
			@planet =Planet.new('Pluto','Cold',2500)
		end

		it 'takes the first parameter and sets it to @name' do 
			expect(@planet.name).to eq('Pluto')
		end

		it 'takes the second parameter and sets it to @description' do
			expect(@planet.description).to eq('Cold')
		end
		it 'takes the third parameter and sets it to @population' do
			expect(@planet.population).to eq(2500)
		end
	end
	describe 'attributes' do
		before do
			@planet = Planet.new('Uranus','Cold', 100)
		end

		it 'has getter for name' do 
			expect(@planet.name).to eq('Uranus')
		end
		it 'has getter for description' do 
			expect(@planet.description).to eq('Cold')
		end
		it 'has getter for population' do
			expect(@planet.population).to eq(100)
		end
	end
end

RSpec.describe Solar_System do
	describe 'initialization' do
		before do
			@solar1 = Solar_System.new('Freedom')
			@solar2 = Solar_System.new
		end

		it 'it has @name set to default of Milky Way when no parameter is passed' do
			expect(@solar2.name).to eq('Milky Way')
		end

		it 'if parameter is passed @name is set to parameter' do
			expect(@solar1.name).to eq('Freedom')
		end
		it 'sets @planetlist to empty array' do
			expect(@solar1.planetlist.length).to eq(0)
		end
		it 'sets @planetcount to length of @planetlist' do 
			expect(@solar1.planetcount).to eq(0)
		end
	end
	describe 'attributes' do
		before do
			@solar = Solar_System.new
		end
		it 'has getter for name' do
			expect(@solar.name).to eq('Milky Way')
		end
		it 'has getter for planetlist' do
			expect(@solar.planetlist).to eq([])
		end
		it 'has getter for planetcount' do 
			expect(@solar.planetcount).to eq(0)
		end
	end
	describe 'behavior' do
		before do 
			@solar = Solar_System.new
			@planet = Planet.new('Earth','Dead inside', 7)
			@planet2 = Planet.new('Mars', 'Red', 30)
		end
		it 'adds an object if the object inherits from Planet' do 
			expect(@solar.addplanet(@planet)).to eq(true)
			expect(@solar.planetcount).to eq(1)
			notplanet = Array.new
			expect(@solar.addplanet(notplanet)).to eq(false)
		end
		it 'method to set planetlist to open array and count down to 0' do
			@solar.addplanet(@planet)
			@solar.addplanet(@planet2)
			@solar.supernova
			expect(@solar.planetlist).to eq([])
			expect(@solar.planetcount).to eq(0)
		end
	end

end

