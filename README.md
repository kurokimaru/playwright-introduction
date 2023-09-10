# playwright-introduction

テストライブラリであるPlaywrightを使用して、Dockerコンテナ内でVueのテストを行う方法を紹介します。

## 1. Dockerコンテナ起動
```bash
$ docker-compose up -d
```

## 2. Dockerコンテナ内に入る
playwright-introduction-tests-1という名前でコンテナが起動していたので、このコンテナの中に入る。
```bash
$ docker ps
CONTAINER ID   IMAGE                           COMMAND                   CREATED          STATUS          PORTS                    NAMES
dae563b1b656   playwright-introduction-tests   "bash -c 'npm instal…"   31 minutes ago   Up 31 minutes   0.0.0.0:9323->9323/tcp   playwright-introduction-tests-1
$ docker exec -it playwright-introduction-tests-1 bash
```

## 3. Dockerコンテナ内で、Playwright実行

http://0.0.0.0:9323 にアクセすると、レポートが見れる。
```bash
root@dae563b1b656:/app# npm run test:docker

> playwright-introduction@0.0.0 test:docker
> xvfb-run playwright test


Running 3 tests using 1 worker
  3 passed (10.2s)

  Serving HTML report at http://0.0.0.0:9323. Press Ctrl+C to quit.
```