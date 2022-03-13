## 1. 可以被使用的镜像加速地址

- 阿里云的某个镜像源：https://jxus37ad.mirror.aliyuncs.com
- docker中国镜像源：http://registry.docker-cn.com


```
{
  "registry-mirrors": [
    "https://hub-mirror.c.163.com"
  ],
  "debug": true,
  "experimental": false,
  "builder": {
    "gc": {
      "defaultKeepStorage": "20GB",
      "enabled": true
    }
  }
}
```

## 2. 易于使用的 PHP ，Nginx，MySQL 开发环境

PHP开发环境配置伴侣

可以很方便的配置各种 `PHP5.6` 和 `PHP7.1` 的环境

## 3. 常用命令

重新编译所有docker镜像，Nginx、MySQL、PHP5.6、PHP7.1 四个镜像

```
bash ./rebuildall.sh
```


启动 docker-php-nginx-mysql 环境

```
sudo bash ./start.sh
```

进入docker 容器 `fpm_php7.1` 的内部

```
sudo bash ./bash.sh fpm_php7.1
```

