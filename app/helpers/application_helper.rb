module ApplicationHelper
  def app_name
    'Daisy'
  end

  def title
    base_title = app_name

    if devise_path?
      if controller_name == 'sessions'
        return 'Login'
      elsif controller_name == 'registrations'
        return 'Sign Up'
      end
    end

    controller_name = controller.controller_name
    controller_name = 'Transactions' if controller_name == 'app_transactions'

    base_title = "#{controller_name.capitalize} | #{base_title}" unless controller_name == 'categories'
    base_title
  end

  def show_back_button?
    root_path != request.path && !splash_screen?
  end

  def splash_screen?
    %w[splash].include?(request.path.split('/')[1])
  end

  # use in navbar to determine
  # where to redirect to when clicking the back button
  def back_path
    return splash_path if devise_path?

    root_path
  end

  def devise_path?
    %w[users].include?(request.path.split('/')[1])
  end
end
