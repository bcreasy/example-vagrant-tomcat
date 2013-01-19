debconf-utils:
  pkg:
    - installed
    
tomcat7:       
  pkg:         
    - installed    
    - require:
      - pkg: debconf-utils
      
  service.running:
    - enable: True      
    - name: tomcat7
    - watch:
      - file: /etc/tomcat7/server.xml
      
  file.managed:
    - name: /etc/tomcat7/server.xml
    - source: salt://tomcat7/server.xml
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: tomcat7
