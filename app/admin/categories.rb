ActiveAdmin.register Category do
	config.per_page = 20
	menu :priority => 4
  form do |f|                         
    f.inputs "Caetgory Details" do     
    	f.input :subject, :as => :select, :prompt => "Select Subject"  
      f.input :name                  
      f.input :description  
    end                               
    f.buttons                         
  end
end
