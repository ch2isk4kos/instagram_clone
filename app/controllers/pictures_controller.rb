class PicturesController < ApplicationController

    before_action :find_picture, only: [:show, :edit, :update, :destroy]

    def index
        @pictures = Picture.all.order("created_at")
    end

    def show
    end

    # View Files
    def new
        # before devise:
        # @picture = Picture.new

        # after devise:
        @picture = current_user.pictures.build
    end

    def create
        # before devise
        # @picture = Picture.new(picture_params)

        # after devise
        @picture = current_user.pictures.build(picture_params)

        if @picture.save
            redirect_to @picture, notice: "Successful Submission"
        else
            render 'new'
        end
    end

    # No View Files

    def edit
    end

    def update
        if @picture.update(picture_params)
            redirect_to @picture, notice: "Picture Updated"
        else
            render 'edit'
        end
    end

    def destroy
        @picture.destroy
        redirect_to root_path
    end

    # a redirect is a refresh - all data changes will be lost
    # a render prevents data from being lost

    private

    def picture_params
        params.require(:picture).permit(:title, :description)
    end

    def find_picture
        @picture = Picture.find(params[:id])
    end
end
