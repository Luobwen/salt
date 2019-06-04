include:
  - modules.redis.redis-config


redis-run:
  cmd.run:
    - name: redis-server /etc/redis/6379.conf
