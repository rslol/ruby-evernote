class DocsController < ApplicationController
    # before_action runs the method find_doc only on the show, edit, update, and destroy routes. find_doc is defined on line 36
    before_action :find_doc, only: [:show, :edit, :update, :destroy]

    def index
        # New -> Old documents display order
        @docs = Doc.all.order('create_at DESC')
    end

    def show 
    end 

    def new 
        # In new.html.haml > _form.html.haml, this is how those templates know what @doc is
        @doc = Doc.new
    end 
    
    # Update's DB with changes
    def update 
    end 

    def edit 
    end

    def create
        @doc = Doc.new(doc_params)

        if @doc.save
            redirect_to @doc
        else 
            render 'new'
        end
    end
    
    def destroy 
    end 

    private
        def find_doc
            @doc = Doc.find(params[:id])
        end

        def doc_params
            params.require(:doc).permit(:title, :content)
        end 
end
