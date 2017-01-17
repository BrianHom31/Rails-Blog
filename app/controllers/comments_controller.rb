class CommentsController < ApplicationController

	def index
    @comments = Comment.all
  end


  def new
  end


  def create
    @new_comment = Comment.create(
      content: params[:comment][:content],
      post_id: params[:comment][:post_id],
      user_id: params[:comment][:user_id]
    )

    if @new_comment
      redirect_to '/posts/' + @new_comment.post.id.to_s
    else
      redirect_to url_for(:controller => :comments, :action => :new)
    end
  end


  def show
    @comment = Comment.find(params[:id])
    @comment_user = @comment.user.username

		@user = User.find(params[:id])
		@user_posts = @user.posts

    if session[:post_id] # if logged in
      @message = "You're now logged in!"
    else
      @message = "You're not logged in yet"
    end
  end


  def edit
    @comment = Comment.find(params[:id])
  end


  def update
    @comment = Comment.find(params[:id])
    @comment.update({
      content: params[:comment][:content],
      post_id: params[:comment][:post_id],
      user_id: params[:comment][:user_id]
    })

    if (@comment)
      redirect_to url_for(:controller => :comments, :action => :index)
    else
      redirect_to url_for(:controller => :comments, :action => :edit)
    end
  end


  def destroy

    @comment = Comment.find(params[:id])
    puts @comment
    @comment.destroy

    redirect_to url_for(:controller => :comments, :action => :index)
  end

end
