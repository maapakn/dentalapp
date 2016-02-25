class Diente < ActiveRecord::Base
<<<<<<< HEAD
=======
  has_many :pedidos_dientes
  has_many :pedidos, through: :pedidos_dientes
>>>>>>> f169e474be587b3ee9ee0633471e5a58ceb41854
end
