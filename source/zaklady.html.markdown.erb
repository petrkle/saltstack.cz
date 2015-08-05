---
title: Základy
---

## Základy

Základní operace, které jde automatizovat pomocí Saltstacku.

### Instalace programu

```yaml
apticron:
  pkg.installed:
    - name: apticron
```

### Nastavení konfiguračního souboru

```yaml
/etc/apt/listchanges.conf:
 file.managed:
  - source: salt://listchanges/listchanges.conf
  - template: jinja
  - mode: 644
  - user: root
  - group: root
```

### Správa uživatelských účtů

```yaml
git-group:
  group.present:
    - name: git
    - gid: 300

git-user:
  user.present:
    - name: git
    - fullname: git
    - shell: /bin/false
    - home: /home/git
    - uid: 300
    - gid: 300
    - groups:
      - git
```

### Spuštění příkazu s podmínkou

```yaml
create-default-roundcube-db:
  cmd.run:
    - user: www-data
    - group: www-data
    - name: sqlite3 /tmp/roundcubemail.db < /tmp/sqlite.initial.sql
    - unless: test -f /tmp/roundcubemail.db
```

### Stažení a rozbalení archivu

```yaml
roundcube-dir-create:
  file.directory:
    - name: /home/www/roundcube
    - user: www-data
    - group: www-data
    - mode: 0755
    - makedirs: True

roundcube-mail:
  archive.extracted:
    - name: /home/www/roundcube
    - source: http://example.com/roundcube-1.0.2.tar.gz
    - source_hash: md5=abbefef812d241f3c4eeb3aa7310cb41
    - tar_options: --ungzip --same-owner
    - archive_format: tar
    - if_missing: /home/www/roundcube/roundcubemail-1.0.2
    - require:
      - file: /home/www/roundcube
```

### Smazání souboru

```yaml
/etc/nginx/conf.d/default.conf:
 file.absent
```

### Smazání adresáře

```yaml
rcm-delete-installer:
 file.absent:
  - name: /home/www/roundcube/roundcubemail-0.8.0/installer
```

### Založení MySQL databáze

```yaml
ttrss_db:
  mysql_database.present:
    - name: ttrss
  mysql_user.present:
    - name: ttrss
    - password: heslo
  mysql_grants.present:
    - database: ttrss.*
    - grant: ALL PRIVILEGES
    - user: ttrss
  require:
    - service: mysql
```

### Nahrání dat to databáze

```yaml
ttrss-db-schem:
  cmd.run:
    - name: mysql ttrss < /home/www/ttrss/schema/ttrss_schema_mysql.sql
    - unless: test `echo 'show tables;' | mysql ttrss | wc -l` -gt 0
    - cwd: /root/
```

### Stažení git repozitáře

```yaml
https://tt-rss.org/gitlab/fox/tt-rss.git:
  git.latest:
    - target: /home/www/ttrss
```
