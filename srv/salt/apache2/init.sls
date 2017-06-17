apache2:
  pkg.installed:
    - pkgs: 
      - apache2
      - libapache2-mod-fastcgi
  service.running:
    - enable: True
    - watch:
      - pkg: apache2