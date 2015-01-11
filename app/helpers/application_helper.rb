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

  def doctor_new_link
    link_to new_doctor_path, class: 'btn btn-primary btn-xs' do
      "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
    end
  end

  def doctor_edit_link(resource)
    if resource_owner?(resource)
      link_to edit_doctor_path(resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def doctor_destroy_link(resource)
    if resource_owner?(resource)
      link_to doctor_path(resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

  def patient_new_link
    link_to new_patient_path, class: 'btn btn-primary btn-xs' do
      "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
    end
  end

  def patient_edit_link(resource)
    if resource_owner?(resource)
      link_to edit_patient_path(resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def patient_destroy_link(resource)
    if resource_owner?(resource)
      link_to patient_path(resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
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

  def rate_new_link(doctor)
    if resource_owner?(doctor)
      link_to new_doctor_rate_path(doctor), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
      end
    end
  end

  def rate_show_link(doctor, resource)
    if resource_owner?(resource)
      link_to resource.title, doctor_rate_path(doctor, resource)
    else
      link_to resource.title, "#"
    end
  end

  def rate_edit_link(doctor, resource)
    if resource_owner?(resource)
      link_to edit_doctor_rate_path(doctor, resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def rate_destroy_link(doctor, resource)
    if resource_owner?(resource)
      link_to doctor_rate_path(doctor, resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

  def availability_new_link(doctor)
    if resource_owner?(doctor)
      link_to new_doctor_availability_path(doctor), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-plus'></i> Add New".html_safe
      end
    end
  end

  def availability_edit_link(doctor, resource)
    if resource_owner?(resource)
      link_to edit_doctor_availability_path(doctor, resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-wrench'></i> Edit".html_safe
      end
    end
  end

  def availability_show_link(doctor, resource)
    if resource_owner?(resource)
      link_to doctor_availability_path(doctor, resource), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-eye-close'></i> Av".html_safe
      end
    end
  end

  def availability_destroy_link(doctor, resource)
    if resource_owner?(resource)
      link_to doctor_availability_path(doctor, resource), method: :delete, data: {confirm: 'Are you sure?'}, class: 'btn btn-danger btn-xs' do
        "<i class='glyphicon glyphicon-trash'></i> Delete".html_safe
      end
    end
  end

  def rating_new_link(doctor)
    if patient?
      link_to new_doctor_rating_path(doctor), class: 'btn btn-primary btn-xs' do
        "<i class='glyphicon glyphicon-plus'></i> Review".html_safe
      end
    end
  end


end
