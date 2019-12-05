class SessionsController < ApplicationController 

   
    def create 
        user = User.find_by_credentials(
            params[:user][:email],
            params[:user][:password]
        )

        if user.nil?
            flash.now[:errors] = ["Incorrect password/email"]
            render :new 
        else 
            login(user)
            redirect_to jobs_url 
        end     
    end  

    def destroy 
        logout
        redirect_to new_session_url 
    end    

    def new 
        render :new 
    end 
end 