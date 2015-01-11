module ApplicationHelper
  def resource_owner?(resource)
    return current_user.present? && current_user.id == resource.id if resource.is_a?(User)
    return current_user.present? && current_user.id == resource.user.try(:id)
  end

  def doctor?
    current_user.present? && current_user.is_a?(Doctor)
  end

  def patient?
    current_user.present? && current_user.is_a?(Patient)
  end

  def hospital_authority?
    current_user.present? && current_user.is_a?(HospitalAuthority)
  end

  def hospital_new_link
    if hospital_authority?
      link_to new_hospital_path, class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
      end
    end
  end

  def hospital_edit_link(hospital)
    if resource_owner?(hospital)
      link_to edit_hospital_path(hospital), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def hospital_destroy_link(hospital)
    if resource_owner?(hospital)
      link_to hospital_path(hospital), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

end
