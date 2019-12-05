class UsersController < ApplicationController 

    def create
        @user = User.new(user_params)

        if @user.save
            login(@user)
            redirect_to jobs_url 
        else      
            flash.now[:errors] = @user.errors.full_messages 
            render :new 
        end     
    end    

    def index 
        @my_jobs = Job.find_by(poster_id: current_user.id).as_json 

        @my_jobs_applicants = @my_jobs.each do |my_job|
            my_job.applies
        end    
       
        
        render :index
    end
    
    
    def show
        if !current_user 
            render :new
        end
        @job_applications = current_user.applied_jobs.as_json

        @my_applied_jobs = @job_applications.map do |job|
            Job.find_by(id: job["id"]).as_json
        end     
        
        render :show
        
    end    

    def new 
        @user = User.new 
        render :new 
    end    
    
    private 
    def user_params 
        params.require(:user).permit(:password, :email)
    end     
end     