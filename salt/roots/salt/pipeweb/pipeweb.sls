pipeweb:       
      
  file.managed:
    - name: /etc/tomcat6/Catalina/localhost/pipeweb.xml
    - source: salt://pipeweb/pipeweb.xml
    - user: tomcat6
    - group: tomcat6
    - mode: 644
    - require:
      - pkg: tomcat6
