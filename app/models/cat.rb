class Cat < ApplicationRecord
  include ActionView::Helpers::DateHelper

  COLORS = ['orange', 'black', 'white', 'blue']

  validates :sex, inclusion: { in: ['M', 'F'] }
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: { in: COLORS }
  def age
    #Time.now.strftime("%m/%d/%Y").to_date - self.birth_date
    time_ago_in_words(birth_date)

  end

  has_many :cat_rental_requests,
    class_name: :CatRentalRequest,
    primary_key: :id,
    foreign_key: :cat_id
end
