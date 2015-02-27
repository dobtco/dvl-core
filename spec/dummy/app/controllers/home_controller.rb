class HomeController < ActionController::Base
  layout false

  def delegate
    if respond_to?(params[:actual_action_name])
      send(params[:actual_action_name])
      render params[:actual_action_name]
    elsif view_exists?
      render params[:actual_action_name], layout: false
    else
      render plain: %{
        View not found! Expecting to see "class #{assumed_view_class_name}"
        inside of app/views/home/#{params[:actual_action_name]}.rb.
      }.squish
    end
  end

  private

  def view_exists?
    assumed_view_class_name.constantize && true
  rescue
    false
  end

  def assumed_view_class_name
    "Views::Home::#{params[:actual_action_name].camelize}"
  end
end
