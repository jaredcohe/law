module TruthsHelper
  def disqus_init_js
    js =<<EOS
      /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
      var disqus_shortname = 'thetruthaboutlawschool';
      var disqus_developer = 1; // developer mode is on

      // The following are highly recommended additional parameters. Remove the slashes in front to use.
      var disqus_identifier = '#{@truth.id}';
      var disqus_url = 'http://thetruthaboutlawschool.com/permalink-to-page.html';

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
