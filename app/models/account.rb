class Account < ApplicationRecord

  belongs_to :owner, class_name: "User"
  has_many :account_users, dependent: :destroy
  has_many :users, through: :account_users

  scope :personal, -> { where(personal: true) }
  scope :impersonal, -> { where(personal: false) }

  validates :name, presence: true

  def email
    account_users.includes(:user).order(created_at: :asc).first.user.email
  end

  def personal_account_for?(user)
    personal? && owner_id == user.id
  end

end
