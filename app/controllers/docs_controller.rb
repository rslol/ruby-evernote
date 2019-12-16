class DocsController < ApplicationController
    def index
    end

    def show 
    end 

    def new 
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
        end

        def doc_params
            params.require(:doc).permit(:title, :content)
        end 
end
