class SkillsController < ApplicationController
    
    def new
       @category = Category.find(params[:category_id])
       
    end
    
    
    def edit
        @skill = Skill.find(current_user.skills)
        @category = Category.all
        @skills = Skill.where(user_id: current_user.id)
    end
    
    def create
         @skill = current_user.skills.new(skill_params)
         if @skill.save
             redirect_to action 
         else
             render 'new', category_id: skill_params
             flash.now[:alert] = "登録内容に誤りがあります"
         end
    end
    
    def update
        skill = skill.params
        skill.update(skill_params)
        redirect_to skill_edit_url
    end
    
    def destroy
        
        Skill.find(skill_params).destroy
        redirect_to edit_skills_path
    end
    
private
    
    def skill_params
        byebug
      params.require(:skill).permit(:id, :skill_name, :level, :category_id)
    end
    
    
end    

