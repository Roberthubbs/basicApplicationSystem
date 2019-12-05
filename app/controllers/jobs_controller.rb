class JobsController < ApplicationController

    def index 
        @jobs = Job.all 
        render :index
    end    

    def show 
        @job = Job.find(params[:id])
        render :show
    end     

    def new 
        @job = Job.new 
        render :new 
    end     

    def create 
        @job = Job.new(job_params)
        @job.poster_id = current_user.id
        if @job.save 
            redirect_to job_url(@job)
        else 
            flash.now[:errors] = @job.errors.full_messages 
            render :new 
        end    
    end    

    private 
    
    def job_params 
        params.require(:job).permit(:title, :description)
    end   
end    