class User < ActiveRecord::Base
  
  after_create :set_default_role, if: Proc.new { User.count > 1 }
  
  #rolify기능을 사용합니다.
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    #모델에서의 관계입니다
    has_many :posts
    
    #기본 권한을 지정하는 함수입니다
    def set_default_role
     add_role :user
    end
end
