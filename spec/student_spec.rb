require './student'

describe Student do
  context 'When testing the Student class' do
    it 'should show student attributes values' do
      student1 = Student.new(44, 'Rails', 'Nuri', true)
      expect(student1.age).to eq 44
      expect(student1.classroom).to eq 'Rails'
      expect(student1.name).to eq 'Nuri'
      expect(student1.parent_permission).to be true
    end

    it 'The student should have classroom english ' do
      student1 = Student.new(44, 'Rails', 'Nuri', true)
      english = Classroom.new('English')
      student1.classroom = english

      expect(student1.classroom.label).to eq 'English'
      expect(english.students.count).to eq 1
    end
  end
end
