class JournalController < ActionController::Base
    layout "base"
    require 'carrierwave/orm/activerecord'
    def show
        @entries = Journal.all.reverse
        @entry = Journal.new
    end
    
    def journal_params
        params.require(:snippet).permit(:title, :content, :image)
    end
    
    def update
        
        entry = params[:entry]

        if entry[:caption].to_s == ''
            flash[:notice] = "Please fill in the caption field."
            redirect_to show_journal_path and return
        elsif entry[:time].to_s == ''
            flash[:notice] = "Please fill in the workout time field."
            redirect_to show_journal_path and return
        elsif entry[:date].to_s == ''
            flash[:notice] = "Please fill in the workout date field."
            redirect_to show_journal_path and return
        else
            begin
                Date.strptime(entry[:date], '%m/%d/%Y')
            rescue ArgumentError
                flash[:notice] = "New date must be in MM/DD/YYYY format"
                redirect_to show_journal_path and return
            end
            begin
                Time.strptime(entry[:time], '%I:%M %p')
            rescue ArgumentError
                flash[:notice] = "New time must be in HH:MM AM/PM format"
                redirect_to show_journal_path and return
            end

            uploader = PictureUploader.new
            uploader.store!(params[:picture])
            
            
            path_name = ""
            if params[:picture] 
                path_name = "uploads/" + params[:picture].original_filename
            end
            
            if params[:picture] and params[:picture].original_filename == "image.jpg"
                new_path_name = "uploads/" + Random.new_seed.to_s + params[:picture].original_filename
                File.rename("public/" + path_name, "public/"+ new_path_name)
                path_name =  new_path_name
            end
        
            entry = params[:entry]
            Journal.create!(:caption => entry[:caption], :date => Date.strptime(entry[:date], '%m/%d/%Y').strftime('%m/%d/%Y'), :time => Time.strptime(entry[:time], '%I:%M %p').strftime('%I:%M %p'), :hero => path_name, :workout => params[:workout])
            flash[:notice] = "Entry #{entry[:caption]} was successfully created!"
            redirect_to show_journal_path
        end
    end
    
    def delete
        to_destory = Journal.find(params[:id])
        Journal.destroy(to_destory)
        flash[:notice] = "Entry successfully deleted!"
        redirect_to show_journal_path
    end
end