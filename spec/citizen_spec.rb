require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "should be true if user is of age" do
      citizen1 = Citizen.new("","",18)
      expect(citizen1.can_vote?).to eq(true)
    end

    it "should be false if user is not 18" do
      citizen2 = Citizen.new("","",17)
      expect(citizen2.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "should return full_name" do
      citizen1 = Citizen.new("James","Douglas",18)
      expect(citizen1.full_name).to eq('James Douglas')
    end

    it "should return full_name" do
      citizen1 = Citizen.new("jAmes","Douglas",18)
      expect(citizen1.full_name).to eq('James Douglas')
    end
  end
end
