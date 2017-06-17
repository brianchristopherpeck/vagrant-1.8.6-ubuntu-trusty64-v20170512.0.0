nginx:
  pkg.installed:
    - pkgs: 
      - nginx
  service.running:
    - name: nginx