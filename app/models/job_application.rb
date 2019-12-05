# == Schema Information
#
# Table name: applications
#
#  id         :integer          not null, primary key
#  job_id     :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class JobApplication < ApplicationRecord

    

    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User 
    
    belongs_to :job,
        foreign_key: :job_id,
        class_name: :Job  
        
    
end
