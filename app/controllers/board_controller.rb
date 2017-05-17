class BoardController < ApplicationController
  # index
  def index
    
  end

  def create
    
  end

  # free read
  def read
    @one_post = Unipost.new
    @one_post.title = params[:title]
    @one_post.writer = params[:writer]
    @one_post.content = params[:content]
    @one_post.hits = 0
    @one_post.save
    
    redirect_to '/board/list'
  end
  
  def list
    @all_post = Unipost.all
  end

  # free update
  def update
    @one_post = Unipost.find(params[:update_id])
  end
  
  # free update ok
  def update_ok
    @one_post = Unipost.find(params[:id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.writer = params[:writer]
    @one_post.save
    
    redirect_to '/board/list'
  end

  # free delete 
  def delete
    @one_post = Unipost.find(params[:del_id])
    @one_post.destroy
    
    redirect_to '/board/list'
  end

  # free detail
  def detail
    @one_post = Unipost.find(params[:detail_id])
    @one_post.hits += 1
    @one_post.save
  end
  
  
  # Lotto
  def list_lotto
    @lotto_post = Lotto.all
  end
  
  def create_lotto
  
  end
  
  def read_lotto
    @lotto_post = Lotto.new
    @lotto_post.lotto_num = params[:num]
    @lotto_post.save
    
    redirect_to '/board/list_lotto'
  end
  
  def detail_lotto
    @lotto_post = Lotto.find(params[:detail_id])
    @lotto_post.save
  end
  
  def update_lotto
    @lotto_post = Lotto.find(params[:update_id])
  end
  
  def update_ok_lotto
    @lotto_post  = Lotto.find(params[:num])
   
    @lotto_post.save
    
    redirect_to '/board/list_lotto'
  end
  
  def delete_lotto
    @lotto_post = Lotto.find(params[:del_id])
    @lotto_post.destroy
    
    redirect_to '/board/list_lotto'
  end
end
