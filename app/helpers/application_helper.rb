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

  def google_analytics_init_js
    js =<<EOS
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-21682707-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
EOS
    javascript_tag js
  end
end
