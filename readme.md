# my-shwll-replace-test
シェルスクリプトのテキストファイルの文字列置換お試しリポジトリ

## NOTE

### Sandbox

```
docker-compose build
docker-compose up -d
docker exec -it centos8 bash
cd /home
```

### Generate TEST Data
```
sh generate-dummy-data.sh # genereate dummy-data
```

### Replace Data
```
sh replace.sh
```