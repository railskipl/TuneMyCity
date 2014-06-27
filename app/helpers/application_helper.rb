module ApplicationHelper
	def title
     base_title = "Ruby on Rails Tutorial Sample App"
       if @title.nil?
        base_title
       else
        "#{base_title} | #{@title}"
       end
     end

     def format_boolean(is_approved)
        if is_approved
          
          icon_tick
        else
          icon_cross
         end
      end

      # def format_toogle(is_approved)
      #   if is_approved
      #    <button type="button" disabled>Click Me!</button>
      #   end
      # end
      
      def icon_tick(alt_text='Tick')

       build_image_tag("/assets/001_05.png", alt_text)

      end

      def icon_cross(alt_text='Cross')
        build_image_tag("/assets/001_06.png", alt_text)

      end
       def build_image_tag(image_file, alt_text)
        image_tag(image_file, :alt => alt_text)
      end

   def ordinalize
    if (11..13).include?(self % 100)
      "#{self}th"
    else
      case self % 10
        when 1; "#{self}st"
        when 2; "#{self}nd"
        when 3; "#{self}rd"
        else    "#{self}th"
      end
    end
  end

  
end
