class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end
    def new
        @tag = Tag.new
    end
    def edit
        @tag = Tag.find(params[:id])
    end
    def create
        @tag = Tag.new(tag_params)
        @tag.save
        
        flash.notice = "Tag '#{@tag.name}' Created!"

        redirect_to article_path(@tag.article)
    end
    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
        
        flash.notice = "Tag '#{@tag.title}' Deleted!"
        
        redirect_to root_path
    end
    def update
        @tag = Tag.find(params[:id])
        @tag.update(tag_params)

        flash.notice = "Tag '#{@tag.title}' Updated!"

        redirect_to article_path(@tag.article)
    end
end
