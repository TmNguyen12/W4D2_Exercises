class CatRentalRequest < ApplicationRecord
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: ['PENDING', 'APPROVED', 'DENIED']}

  belongs_to :cat,
    class_name: :Cat,
    primary_key: :id,
    foreign_key: :cat_id,
    dependent: :destroy

  def overlapping_requests
    select(cat_id).from(cat_rental_requests).where("cat_id = ? ", )

  end
end
