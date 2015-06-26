module ApplicationHelper
def form_group_tag(errors, &block)
	if errors.any?
		constent_tag :div, capture(&block), class: 'form-group has_error'
	else 
		constent_tag :div, cature(&block), class: 'form-group'
		end
	end
end
