# jekyll workflow / 基礎操作步驟說明


## 環境

撰寫此說明時，以下操作步驟的測試環境

* Xubuntu 16.04 英文界面


## 相關網址

* https://github.com/rbenv
* https://jekyllrb.com/
* https://pages.github.com/


## 前置作業

安裝「git」

``` sh
$ sudo apt-get intall git
```

## 安裝 rbenv

> 註：「rbenv」更詳細的使用說明，請參考「rbenv / [rbenv](https://github.com/rbenv/rbenv)」和「rbenv / [ruby-build](https://github.com/rbenv/ruby-build)」的說明。

執行

``` sh
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```

執行

``` sh
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
```

執行

``` sh
$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

然後重新進到bash環境，或是直接執行「source ~/.bashrc」。


## 安裝「編譯ruby需要的套件」

執行下面指令，安裝「編譯ruby需要的套件」

``` sh
$ sudo apt-get install build-essential debhelper libssl-dev libreadline-dev zlib1g-dev
```

本來想執行「sudo apt-get build-dep ruby」來安裝「編譯ruby需要的套件」，
不過後來利用新安裝的系統，來測試下面「透過rbenv安裝ruby」，

會顯示

```
Downloading ruby-2.3.1.tar.bz2...
-> https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.bz2
Installing ruby-2.3.1...

BUILD FAILED (Ubuntu 16.04 using ruby-build 20160913-13-g8ef0c34)

Inspect or clean up the working tree at /tmp/ruby-build.20161019094533.5808
Results logged to /tmp/ruby-build.20161019094533.5808.log

Last 10 log lines:
The Ruby openssl extension was not compiled.
The Ruby readline extension was not compiled.
The Ruby zlib extension was not compiled.
ERROR: Ruby install aborted due to missing extensions
Try running `apt-get install -y libssl-dev libreadline-dev zlib1g-dev` to fetch missing dependencies.

Configure options used:
  --prefix=/home/user/.rbenv/versions/2.3.1
  LDFLAGS=-L/home/user/.rbenv/versions/2.3.1/lib
  CPPFLAGS=-I/home/user/.rbenv/versions/2.3.1/include
rbenv: version `2.3.1' not installed
Makefile:21: recipe for target 'ruby-install' failed
make: *** [ruby-install] Error 1
```

從上面的訊息，可以看到「Try running `apt-get install -y libssl-dev libreadline-dev zlib1g-dev` to fetch missing dependencies.」

執行下面指令

``` sh
$ apt-cache showsrc ruby | grep Build-Depends:
```

顯示

```
Build-Depends: debhelper (>= 9)
```

也就是執行「sudo apt-get build-dep ruby」，應該是安裝「[debhelper](http://packages.ubuntu.com/xenial/debhelper)」這個套件。

執行下面指令

``` sh
$ apt-cache show debhelper | grep Depends:
```

顯示

```
Depends: perl, file (>= 3.23), dpkg (>= 1.16.2), dpkg-dev (>= 1.18.2~), binutils, po-debconf, man-db (>= 2.5.1-1), libdpkg-perl (>= 1.17.14), dh-strip-nondeterminism, autotools-dev
```


## 透過 rbenv 安裝 ruby

> 註：「安裝ruby」不一定要透過「rbenv」的方式，還有其他的方式，
> 例如「[rvm](https://rvm.io/) ([GitHub](https://github.com/rvm/rvm))」，
> 或是Ubuntu環境也可以直接安裝「[ruby](http://packages.ubuntu.com/xenial/ruby)」這個套件，只要執行「sudo apt-get install ruby」。

執行下面指令，查詢目前ruby有那些版本可以安裝。

``` sh
$ rbenv install -l | less
```

顯示

```
...略...
1.8.6
...略...
2.3.1
...略...
```

執行下面指令安裝版本「2.3.1」 <-- 舉例

``` sh
$ rbenv install 2.3.1
```

顯示

```
Downloading ruby-2.3.1.tar.bz2...
-> https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.1.tar.bz2
Installing ruby-2.3.1...
Installed ruby-2.3.1 to /home/sam/.rbenv/versions/2.3.1
```

執行

``` sh
$ rbenv local 2.3.1
```

就會在目前的資料夾產生一個檔案「.ruby-version」

執行下面指令，觀看「.ruby-version」的內容。

``` sh
$ cat .ruby-version
```

顯示

```
2.3.1
```

執行下面指令，確認ruby版本

``` sh
ruby -v
```

顯示

```
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]
```

## 安裝 jekyll

執行

``` sh
$ gem install jekyll
```

## 觀看 jekyll help

執行

``` sh
$ jekyll -h
```

或是執行

``` sh
$ jekyll --help
```

顯示

```
jekyll -h
jekyll 3.3.0 -- Jekyll is a blog-aware, static site generator in Ruby

Usage:

  jekyll <subcommand> [options]

Options:
        -s, --source [DIR]  Source directory (defaults to ./)
        -d, --destination [DIR]  Destination directory (defaults to ./_site)
            --safe         Safe mode (defaults to false)
        -p, --plugins PLUGINS_DIR1[,PLUGINS_DIR2[,...]]  Plugins directory (defaults to ./_plugins)
            --layouts DIR  Layouts directory (defaults to ./_layouts)
            --profile      Generate a Liquid rendering profile
        -h, --help         Show this message
        -v, --version      Print the name and version
        -t, --trace        Show the full backtrace when an error occurs

Subcommands:
  docs                  
  import                
  build, b              Build your site
  clean                 Clean the site (removes site output and metadata file) without building.
  doctor, hyde          Search site and print specific deprecation warnings
  help                  Show the help message, optionally for a given subcommand.
  new                   Creates a new Jekyll site scaffold in PATH
  new-theme             Creates a new Jekyll theme scaffold
  serve, server, s      Serve your site locally
```


## 觀看 jekyll version

執行

``` sh
$ jekyll -v
```

或是執行

``` sh
$ jekyll --version
```

顯示

```
jekyll 3.3.0
```


## 建立 jekyll 專案

執行下面指令，建立一個新的 jekyll 專案

``` sh
$ jekyll new blog
```

也可以執行下面指令，了解「new」更多的「option(選項)」

``` sh
$ jekyll new -h
```

顯示

```
jekyll new -- Creates a new Jekyll site scaffold in PATH

Usage:

  jekyll new PATH

Options:
            --force        Force creation even if PATH already exists
            --blank        Creates scaffolding but with empty files
            --skip-bundle  Skip 'bundle install'
        -h, --help         Show this message
        -v, --version      Print the name and version
        -t, --trace        Show the full backtrace when an error occurs
        -s, --source [DIR]  Source directory (defaults to ./)
        -d, --destination [DIR]  Destination directory (defaults to ./_site)
            --safe         Safe mode (defaults to false)
        -p, --plugins PLUGINS_DIR1[,PLUGINS_DIR2[,...]]  Plugins directory (defaults to ./_plugins)
            --layouts DIR  Layouts directory (defaults to ./_layouts)
            --profile      Generate a Liquid rendering profile
        -h, --help         Show this message
        -v, --version      Print the name and version
        -t, --trace        Show the full backtrace when an error occurs

```


## 啟動 web server

執行下面指令，切換到「blog」這個資料夾

``` sh
$ cd blog
```

執行下面指令，啟動 web server

``` sh
$ jekyll serve
```

也可以執行下面指令，了解「serve」更多的「option(選項)」

``` sh
$ jekyll serve -h
```

顯示

```
jekyll serve -- Serve your site locally

Usage:

  jekyll serve [options]

Options:
            --config CONFIG_FILE[,CONFIG_FILE2,...]  Custom configuration file
        -d, --destination DESTINATION  The current folder will be generated into DESTINATION
        -s, --source SOURCE  Custom source directory
            --future       Publishes posts with a future date
            --limit_posts MAX_POSTS  Limits the number of posts to parse and publish
        -w, --[no-]watch   Watch for changes and rebuild
        -b, --baseurl URL  Serve the website from the given base URL
            --force_polling  Force watch to use polling
            --lsi          Use LSI for improved related posts
        -D, --drafts       Render posts in the _drafts folder
            --unpublished  Render posts that were marked as unpublished
        -q, --quiet        Silence output.
        -V, --verbose      Print verbose output.
        -I, --incremental  Enable incremental rebuild.
            --ssl-cert [CERT]  X.509 (SSL) certificate.
        -H, --host [HOST]  Host to bind to
        -o, --open-url     Launch your site in a browser
        -B, --detach       Run the server in the background
            --ssl-key [KEY]  X.509 (SSL) Private Key.
        -P, --port [PORT]  Port to listen on
            --show-dir-listing  Show a directory listing instead of loading your index file.
            --skip-initial-build  Skips the initial site build which occurs before the server is started.
        -h, --help         Show this message
        -v, --version      Print the name and version
        -t, --trace        Show the full backtrace when an error occurs
        -s, --source [DIR]  Source directory (defaults to ./)
        -d, --destination [DIR]  Destination directory (defaults to ./_site)
            --safe         Safe mode (defaults to false)
        -p, --plugins PLUGINS_DIR1[,PLUGINS_DIR2[,...]]  Plugins directory (defaults to ./_plugins)
            --layouts DIR  Layouts directory (defaults to ./_layouts)
            --profile      Generate a Liquid rendering profile
        -h, --help         Show this message
        -v, --version      Print the name and version
        -t, --trace        Show the full backtrace when an error occurs
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
