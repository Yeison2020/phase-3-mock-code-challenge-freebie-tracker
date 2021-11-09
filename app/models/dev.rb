class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies
    

    def received item_name

        if freebies.item_name.include?(freebies.dev_id)
            true

        else
            false

        end
    end

    def give_away( dev,freebie)

        if(freebie.id == dev.id)
            'Can give it'
        else 


            'No Sorry You do not own this Freebie'
        


        end



    end

end
