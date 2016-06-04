class HomeController < ActionController::Base
  layout false

  def delegate
    if respond_to?(params[:actual_action_name])
      send(params[:actual_action_name])
      render "home/#{params[:actual_action_name]}"
    elsif view_exists?
      render "home/#{params[:actual_action_name]}", layout: false
    else
      raise ActionController::RoutingError.new('Not Found')
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
