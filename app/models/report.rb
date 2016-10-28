class Report < ApplicationRecord
  validates :email, presence: { message: 'Proszę podać adres e-mail' }
  validates_format_of :email, with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'Proszę podać prawidłowy adres e-mail'
  validates :category, presence: true

  validates :description, presence: { message: 'Proszę podać opis' }
  validates :description, length: { minimum: 100, message: 'Minimalna długość opisu - 100 znaków' }

end
