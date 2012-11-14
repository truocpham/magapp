ActiveAdmin.register Category do
  # scope :getByLastSubject, :default => true

	config.per_page = 20
	menu :priority => 4, :parent => "Subjects"

  index do       
    selectable_column                       
    column :name         
    column :description
    column :subject            
    default_actions                
  end

  filter :subject
  filter :name
  filter :description
  filter :created_at
  filter :updated_at

  collection_action :index, :method => :get do
      scope = Category.getByLastSubject

      @collection = scope.page() if params[:q].blank?
      @search = scope.metasearch(clean_search_params(params[:q]))
      @search.subject_id_eq = Subject.last.id if params[:q].blank?

      # respond_to do |format|
      #   format.html {
      #     render "my/own/template" # or "active_admin/resource/index"
      #   }
      # end
  end

  form do |f|                         
    f.inputs "Caetgory Details" do     
    	f.input :subject, :as => :select, :prompt => "Select Subject"
      f.input :name                  
      f.input :description  
    end                               
    f.buttons                         
  end

  action_item :only => :show do
    link_to "New Category", new_admin_category_path
  end
end
