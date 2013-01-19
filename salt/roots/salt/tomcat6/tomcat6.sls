debconf-utils:
  pkg:
    - installed
    
tomcat6:       
  pkg:         
    - installed    
    - require:
      - pkg: debconf-utils
      
  service.running:
    - enable: True      
    - name: tomcat6 
    - watch:
      - file: /etc/tomcat6/server.xml
      
  file.managed:
    - name: /etc/tomcat6/server.xml
    - source: salt://tomcat6/server.xml
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: tomcat6
