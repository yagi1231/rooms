class PostsController < ApplicationController
  before_action :authenticate_user
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    
     @post= Post.new(
       room: params[:room],
       introduce: params[:introduce],
       address: params[:address],
       fee: params[:fee],
       image_name: "default_user.jpg"
     )

   
     if @post.save
        flash[:notice]="新規登録しました"
        redirect_to ("/posts/#{@post.id}")
      else 
        render "new"
    end
  end


  def show
    @post = Post.find(params[:id])
    
  end
 

  def edit
    @post = Post.find_by(params[:id])

  end

  def update

    @post = Post.find_by(params[:id])
    @post.room = params[:room]
    @post.introduce = params[:introduce]
    @post.address = params[:address]
    @post.fee = params[:fee]
    
    if params[:image]
      @post.image_name = "#{@post.id}.jpg"
      image = params[:image]
      File.binwrite("public/post_images/#{@post.image_name}", image.read)
    end

    if @post.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/posts/#{@post.id}")
    else
      render("posts/edit")
    end
 end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice]="スケジュールを削除しました"
    redirect_to :posts
  end
end


 


 

  

