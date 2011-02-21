module ApplicationHelper

  def jquery_block_tag(content)
    javascript_tag "jQuery(function(){#{content}})"
  end

  def validate_js(id_to_validate,validation_string,validation_warning)
    js =<<EOS
      jQuery("##{id_to_validate}").validate({
        expression: "if (#{validation_string}) return false; else return true;",
message: "#{validation_warning}"
      });
EOS
  end

end
