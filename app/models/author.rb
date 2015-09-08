class Author < ActiveRecord::Base
	has_many :books

  def full_name
    "#{f_name} #{l_name}"
  end
end
