require_relative 'wizard'
RSpec.describe Wizard do
    it 'has a default health of 50 and intelligence of 25' do
        wiz = Wizard.new
        expect(wiz.health).to eq(50)
        expect(wiz.intelligence).to eq(25)
    end
    it 'has ancestor chain that includes Human' do
        wiz = Wizard.new
        expect(wiz).to be_a_kind_of(Human)
    end
    it 'has method heal that increases health by 10' do
        wiz = Wizard.new
        expect(wiz.health).to eq(50)
        wiz.heal
        expect(wiz.health).to eq(60)
    end
    it 'has method fireball that attacks object and reduces objects health' do
        wiz1 = Wizard.new
        person1 = Human.new
        wiz1.fireball(person1)
        expect(wiz1.health).to eq(50)
        expect(person1.health).to eq(80)
    end
end
