# frozen_string_literal: true

class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout

	def template(&block)
		doctype

		html do
			head do
				title { "You're awesome" }
				meta name: "viewport", content: "width=device-width,initial-scale=1"
				csp_meta_tag
				csrf_meta_tags
				stylesheet_link_tag "application", data_turbo_track: "reload"
			end

			body(class: 'center') do
          nav do
            cluster do
              li do 
                link_to(root_path) { "Home" }
              end
              li do
                link_to(about_index_path) { "About" }
              end
            end
          end
          main(class: 'stack', &block)
			end
    end
	end
end
