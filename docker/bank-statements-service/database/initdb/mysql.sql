CREATE SCHEMA `bss` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'bss'@'%' IDENTIFIED BY 'q1w2e3r4';
CREATE USER 'bss_recovery'@'%' IDENTIFIED BY 'q1w2e3r4';
GRANT ALL PRIVILEGES ON bss.* TO 'bss'@'%';
GRANT ALL PRIVILEGES ON mysql.* TO 'bss'@'%';
GRANT ALL PRIVILEGES ON bss.tw_task TO 'bss_recovery'@'%';
GRANT ALL PRIVILEGES ON bss.tw_task_data TO 'bss_recovery'@'%';
GRANT ALL PRIVILEGES ON bss.global_switch_off TO 'bss_recovery'@'%';
GRANT SELECT ON bss.* TO 'bss_recovery'@'%';
GRANT SELECT ON mysql.table_stats TO 'bss_recovery'@'%';

CREATE SCHEMA `fx` DEFAULT CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON fx.* TO 'bss'@'%';