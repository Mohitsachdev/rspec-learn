require 'rails_helper'

describe CalculateTwoNumbers do
    values = CalculateTwoNumbers.new(3,4)
    
    it "should give value" do
        expect(values.plus).to eq(7)
        expect(values.minus).to eq(-1)
        expect(values.multiply).to eq(12)
        expect(values.divide).to eq(0)
    end

end
