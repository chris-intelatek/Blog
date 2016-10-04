class CommentsController < ApplicationController
    def create
        @comment = Comment.create(comment_params)
        respond_to do |format|
        if @comment.save
            format.html{redirect_to blogpost_path(@comment.blogpost_id), notice: 'Comment was successfully created.'}
        else
            format.html {redirect_to blogpost_path }
        end
        end
    end
    
    def edit
      @blogpost = Blogpost.find(params[:blogpost_id])
      @comment = Comment.find(params[:id])
    end
    
    def update
      @comment = Comment.find(params[:id])
      respond_to do |format|
        if @comment.update(comment_params)
          format.html { redirect_to blogpost_path(
            @comment.blogpost_id), notice: "Comment was successfully updated."}
          else
            format.html { redirect_to blogpost_path }
          end
        end
      end
      
    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
      respond_to do |format|
        format.html { redirect_to blogpost_path(
            @comment.blogpost), notice: "Comment was successfully destroyed."}
          end
        end
    
    
    private
    def comment_params
        params.require(:comment).permit(:author, :comment_entry, :blogpost_id)
    end
end
