# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  description :text             not null
#  poster_id   :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ApplicationRecord

    validates :description, :title, :poster_id, presence: true

    
    belongs_to :poster,
        foreign_key: :poster_id,
        class_name: :User

    has_many :applies,
        foreign_key: :job_id,
        class_name: :JobApplication
    
    

end
