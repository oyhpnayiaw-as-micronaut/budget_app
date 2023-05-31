module CategoriesHelper
  def with_fallback_icon(icon)
    placeholder = 'https://via.placeholder.com/150'

    return placeholder unless icon.attached?

    icon
  end
end
