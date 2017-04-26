module HatsugensHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_kyoshus_path
    elsif action_name == 'edit'
      kyoshu_path
    end
  end
end