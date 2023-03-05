module SessionsHelper

  def log_in(user)
  session[:user_id] = @user.id
  end
  
  # user.findだとIDが見つからなかった時に例外を返すため、find_byを使用して存在しないデータの場合nilを返すようにする
  def current_user
    if session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
  end
  end
  #ユーザがログインしていたら、nilを返さない、つまりtrueを返す。そうでなければfalseを返す
  def logged_in?
    !@current_user.nil?
  end
  
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end