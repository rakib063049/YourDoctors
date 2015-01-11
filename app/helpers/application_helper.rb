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

  def hospital_edit_link(resource)
    if resource_owner?(resource)
      link_to edit_hospital_path(resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def hospital_destroy_link(resource)
    if resource_owner?(resource)
      link_to hospital_path(resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

  def hospital_authority_new_link
    link_to new_hospital_authority_path, class: 'btn btn-primary btn-xs' do
      "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
    end
  end

  def hospital_authority_edit_link(resource)
    if resource_owner?(resource)
      link_to edit_hospital_authority_path(resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def hospital_authority_destroy_link(resource)
    if resource_owner?(resource)
      link_to hospital_authority_path(resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

end
