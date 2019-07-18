module ApplicationHelper
    def choose_new_or_edits
    if action_name == 'new' || action_name == 'confirm'
      confirm_facebuuks_path
    elsif action_name == 'edit'
      facebuuks_path
    end
    end
    
end
