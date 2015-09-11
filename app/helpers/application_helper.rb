module ApplicationHelper

	def active_class(link_path)
		current_page?(link_path) ? "active" : ""
		# request.fullpath == link_path ? "active" : ""
	end

end
