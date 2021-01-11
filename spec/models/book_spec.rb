require "rails_helper"
 
describe Book do
  describe "search for similar books" do
    before :each do
      @book1 = FactoryBot.create(:book, title: 'Cujo', author: 'Stephen King')
      @book2 = FactoryBot.create(:book, title: 'It', author: 'Stephen King')
      @book3 = FactoryBot.create(:book, title: 'A Caribbean Mystery', author: 'Agatha Christie') 
    end
    it 'it should find books with the same author' do
        expect(Book.similar_books(@book1)).to eq([@book1, @book2])
        expect(Book.similar_books(@book3)).to eq([@book3])
    end
    it 'it should not find books with different author' do
        expect(Book.similar_books(@book1)).to_not include([@book3])
        expect(Book.similar_books(@book3)).to_not include([@book1, @book2])
    end
  end
end