# jekyll workflow / 整合操作步驟說明

以下步驟，是將常用的動作，寫成「Shell Script」放在「bin」底下，

然後透過「make」的機制，導到各個「Shell Script」。

例如：執行「make create」就會執行「bin/blog-create.sh」。

其他的對應請研讀「[Makefile](Makefile)」裡面的內容。

執行的動作則請研讀各個「Shell Script」，或是參考下面的簡易說明。

這些步驟，就是整合「[基礎操作步驟](README.base.md)」而來的。


## git clone 此專案

執行

``` sh
$ git clone https://github.com/samwhelp/demo-jekyll-workflow.git
```

切換到「demo-jekyll-workflow」這個資料夾

``` sh
$ cd demo-jekyll-workflow
```

## 安裝 rbenv

執行

``` sh
$ make rbenv-install
```

然後重新進到bash環境，或是直接執行「source ~/.bashrc」。

## 安裝「編譯ruby需要的套件」

執行

``` sh
$ make ruby-build-dep
```

## 透過 rbenv 安裝 ruby

執行

``` sh
$ make ruby-install
```

## 透過 rbenv 安裝 ruby

執行

``` sh
$ make ruby-install
```

## 安裝 jekyll

執行

``` sh
$ make jekyll-install
```

## 建立 jekyll 專案

執行

``` sh
$ make blog-create
```

## 啟動 web server

執行

``` sh
$ make serve
```

## 觀看網頁

然就可以使用瀏覽器來觀看了

``` sh
$ firefox http://localhost:8080
```

或是

``` sh
$ lynx http://localhost:8080
```
