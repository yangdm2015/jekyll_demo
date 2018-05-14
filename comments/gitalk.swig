  
  {% if site.gitalk.enable %}  //_config.yml文件若没有添加enable: true可删除该判断

    {% if site.gitalk.distractionFreeMode  %}      
      <link rel='stylesheet' href="https://yiyeti.cc/usr/themes/veryse/css/gitalk.css">
      <script src="https://yiyeti.cc/usr/themes/veryse/css/gitalk.min.js"></script>
      <script type="text/javascript">
          var gitalk = new Gitalk({
            clientID:  '{{site.gitalk.clientID}}', 
            clientSecret: '{{site.gitalk.clientSecret}}',
            id: window.location.pathname,
            repo: '{{site.gitalk.repo}}', 
            owner: '{{site.gitalk.owner}}', 
            admin: '{{site.gitalk.admin}}', 
            distractionFreeMode: '{{site.gitalk.distractionFreeMode}}',
          })
          gitalk.render('gitalk-container')
      </script>
    {% endif %}

  {% endif %}