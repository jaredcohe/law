module ApplicationHelper

  def fixed_floating_element
    js =<<EOS
      $(document).ready(function () {

        var top = $('#right_col').offset().top;
        console.log(top)

        $(window).scroll(function () {
          // what is y position of scrolling
          var y = $(window).scrollTop();

          // is it below the form
          if (y >= top) {
            // if so add fixed class
            $('#right_col').addClass('fixed')
          } else {
          // otherwise remove it
            $('#right_col').removeClass('fixed')
          }
        });
      });
EOS
  end

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
