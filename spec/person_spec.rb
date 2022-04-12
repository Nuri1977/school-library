require './person'

describe Person do
  context 'When testing the Person class' do
    it 'should show Person attributes values' do
      person1 = Person.new(32, 'Dejan', true)
      expect(person1).to be_instance_of(Person)
    end

    it 'should show Person attributes values' do
      person1 = Person.new(32, 'Dejan')
      expect(person1.id).to be_between(0, 1000).inclusive
      expect(person1.age).to eq 32
      expect(person1.name).to eq 'Dejan'
      expect(person1.parent_permission).to be true
    end

    it 'should show parent_permission false' do
      person1 = Person.new(32, 'Dejan', false)
      expect(person1.parent_permission).to be false
    end

    it 'the can_use_services? method works correctly for false input' do
      person1 = Person.new(12, 'Ardit', false)
      expect(person1.can_use_services?).to be false
    end

    it "the 'can_use_services?' method works correctly for true input" do
      person1 = Person.new(8, 'Arijon', true)
      expect(person1.can_use_services?).to be true
    end

    it "the 'correct_name' method works correctly" do
      person1 = Person.new(8, 'Arijon', true)
      expect(person1.correct_name).to eq 'Arijon'
    end
  end
end
