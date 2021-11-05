# my-shwll-extrac-test
シェルスクリプトのテキストファイルの文字列抽出お試しリポジトリ

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
sh generate-dummy-data2.sh # genereate dummy-data
```

### Extract Data
```
sh slow-extract.sh # slow extract

sh fast-extract-grep.sh # fast extract grep

sh fast-extract-sed.sh # slow extract sed

sh fast-extract-awk.sh # slow extract awk

```

### Replace Data
```
sh replace.sh
```
