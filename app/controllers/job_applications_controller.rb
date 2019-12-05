class JobApplicationsController < ApplicationController

    def create
        # p params 
        @job_application =  current_user.applied_jobs.new
        user_id = current_user.id
        # job_id = Job.find_by_id(params[:id])
        @job = Job.find_by(id: params[:job_id])
        
        @job_application.user_id = user_id  
        @job_application.job_id = @job.id
        
        # debugger
        if @job_application.save 
            redirect_to users_url
        else 
            debugger
            flash.now[:errors] = @job_application.errors.full_messages 
            render :new 
        end  

        
    end     

    def index 
        @jobs = JobApplication.find_by(poster_id: current_user.id).as_json
        @replies =  @jobs.map do |job|
            User.find(job.user_id)
        end    
        render :index
    end 
    
    
    def new 
        @job_application = JobApplication.new 
        render :new 
    end     

    private 
    def job_app_params 
        params.require(:job_application).permit(:user_id, :job_id)
    end     
end    