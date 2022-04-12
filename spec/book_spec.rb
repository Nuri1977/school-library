require_relative '../book'

describe Book do
  context 'Test for Book class' do
    before(:each) do
      title = 'The Sun'
      author = 'Lincoln Highway'
      @book = Book.new(title, author)
    end

    it 'if it is instance of class' do
      expect(@book).to be_an_instance_of(Book)
    end

    it 'if book title is The Sun' do
      expect(@book.title).to eq('The Sun')
    end

    it 'if book author is Lincoln Highway' do
      expect(@book.author).to eq('Lincoln Highway')
    end
  end
end
