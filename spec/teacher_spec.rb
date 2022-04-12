require_relative '../teacher'

describe Teacher do
  context 'Test for Book class' do
    before(:each) do
      age = 43
      name = 'Smith'
      specialization = 'Web'
      @teacher = Teacher.new(age, specialization, name)
    end

    it 'if is instance of class' do
      expect(@teacher.instance_of?(Teacher)) == true
    end

    it 'if is right age' do
      expect(@teacher.age).to eq 43
    end

    it 'if is right name' do
      expect(@teacher.name).to eq 'Smith'
    end

    it 'if is correct socialization' do
      expect(@teacher.specialization).to eq 'Web'
    end

    it 'if can rent a book' do
      expect(@teacher.can_use_services?).to eq true
    end
  end
end
