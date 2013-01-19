pipeweb:       
      
  file.managed:
    - name: /etc/tomcat7/Catalina/localhost/pipeweb.xml
    - source: salt://pipeweb/pipeweb.xml
    - user: tomcat7
    - group: tomcat7
    - mode: 644
    - require:
      - pkg: tomcat7
