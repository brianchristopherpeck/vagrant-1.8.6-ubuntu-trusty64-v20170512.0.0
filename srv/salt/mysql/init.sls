mysql:
  pkg.installed:
    - pkgs: 
      - mysql-server
  service.running:
    - name: mysql