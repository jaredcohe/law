module TruthsHelper
  def disqus_init_js
    js =<<EOS
      var disqus_shortname = 'thetruthaboutlawschool';
      var disqus_developer = 1; // developer mode is on
      var disqus_identifier = "ID #{@truth.id}";

      /* * * DON'T EDIT BELOW THIS LINE * * */
      (function() {
          var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
          dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
          (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
      })();
EOS
    javascript_tag js
  end
end
