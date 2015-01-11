module ApplicationHelper
  def resource_owner?(resource)
    return current_user.present? && current_user.id == resource.id if resource.is_a?(User)
    return current_user.present? && current_user.id == resource.user.try(:id)
  end
end
