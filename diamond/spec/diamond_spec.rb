require_relative '../diamond.rb'

describe 'Diamond' do
    it 'prints A diamond' do
        letter = 'a'
        diamond = Diamond.new(letter)
        expect(diamond.print_diamond).to eq(" A ")
    end

    it 'prints C diamond' do
        letter = 'c'
        diamond = Diamond.new(letter)
        expect(diamond.print_diamond).to eq("   A   \n  B B  \n C   C \n  B B  \n   A   ")
    end


    it 'prints B diamond' do
        letter = 'b'
        diamond = Diamond.new(letter)
        expect(diamond.print_diamond).to eq("  A  \n B B \n  A  ")
    end 

end
