#Set apache port so it doesn't interfere with nginx
/etc/apache2/ports.conf:
  file.replace:
    - name: /etc/apache2/ports.conf
    - pattern: 'Listen 80'
    - repl: 'Listen 7081'
    - show_changes: True

#Set the port in the virtual host to match
/etc/apache2/sites-available/000-default.conf:
  file.replace:
    - name: /etc/apache2/sites-available/000-default.conf
    - pattern: '<VirtualHost *:80>'
    - repl: '<VirtualHost *:7081>'
    - show_changes: True


apache2:
  pkg.installed:
    - pkgs: 
      - apache2
      - libapache2-mod-fastcgi
  service.running:
    - enable: True
    - watch:
      - pkg: apache2