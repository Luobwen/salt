include:
  - modules.redis.redis-install

redis-config:
  cmd.run:
    - name: cd /root/redis-5.0.5/src/ && cp redis-server redis-cli redis-sentinel redis-benchmark redis-check-aof /usr/bin
    - require:
      - cmd: redis-install

  file.directory:
    - name: /etc/redis/
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644


redis-cpoy-config:
  file.managed:
    - name: /etc/redis/6379.conf
    - source: salt://files/redis.conf
    - user: root
    - group: root
    - mode: 644
