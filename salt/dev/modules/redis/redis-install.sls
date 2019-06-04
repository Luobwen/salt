redis-install:
  # dependency packages
  pkg.installed:
    - name: gcc

  file.managed:
    - name: /root/redis-5.0.5.tar.gz
    - source: salt://files/redis-5.0.5.tar.gz
    - user: root
    - group: root
    - mode: 611
    - require:
      - pkg: redis-install

  cmd.run:
    - name: cd /root && tar -zxvf redis-5.0.5.tar.gz && cd redis-5.0.5 && make && make install
