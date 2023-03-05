class SkillsController < ApplicationController
    
    def new
       @category = Category.find(params[:category_id])
    end
    
    
    def edit
        @user = User.find(params[:id])
        @category = Category.all
        @skill = Skill.where(user_id: current_user.id)
    end
    
    def create
         
    end
    
    
    def update
        skill = skill.params
        skill.update(skill_params)
        redirect_to skill_edit_url
    end
    
    
    
    def destroy
        skill = skill.params
        skill.destroy(skill_params)
        redirect_to skill_edit_url
    end
end
