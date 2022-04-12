require './classroom'
require './student'

describe Classroom do
  context 'When testing the Classroom class' do
    it "should show label input 'English'  when we call @label attribute " do
      english = Classroom.new('English')
      expect(english.label).to eq 'English'
    end

    it 'the add_student method should work correctly' do
      student1 = Student.new(44, 'English', 'Nuri', true)

      english_class = Classroom.new('English')
      english_class.add_students(student1)

      expect(english_class.students[0].name).to eq 'Nuri'
    end
  end
end
