class Book < ApplicationRecord
  before_save :titleize  
  
  def self.all_genres ; %W[#{"Science fiction"} Drama #{"Action and Adventure"} Romance Mystery Horror] ; end 
  validates :title, :presence => true
  validates :publish_date, :presence => true
  validates :isbn_number, :presence => true,
    :unless => :required_ISBN_1967_or_later? 
  validates :genre, :inclusion => {:in => Book.all_genres}

  def required_ISBN_1967_or_later?
    publish_date && publish_date < Date.parse('1 Jan 1967')
  end

  def titleize
    self.title = title.split.each{|x| x.capitalize!}.join(' ')
  end

end