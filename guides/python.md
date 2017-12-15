# Getting Python3 and Pip working via HomeBrew

For some reason all the guidance on the interwebs makes it sound like getting a solid version of Python3 and Pip on the system is trivial.

Not my experience.

Here's what I've had to most recently do (2017-11) to get all the tools in place, found by my shell and doing their job:
1. Install python3 via `brew install python3`.  There's a problem, in that the installer surrenders this warning:
```
==> Downloading https://homebrew.bintray.com/bottles/python3-3.6.3.high_sierra.b
Already downloaded: /Users/mike/Library/Caches/Homebrew/python3-3.6.3.high_sierra.bottle.tar.gz
==> Pouring python3-3.6.3.high_sierra.bottle.tar.gz
Error: An unexpected error occurred during the `brew link` step
The formula built, but is not symlinked into /usr/local
Permission denied @ dir_s_mkdir - /usr/local/Frameworks
Error: Permission denied @ dir_s_mkdir - /usr/local/Frameworks
```
2. Confirm there's an issue by running `brew doctor`:
```
Please note that these warnings are just used to help the Homebrew maintainers
with debugging if you file an issue. If everything you use Homebrew for is
working fine: please don't worry and just ignore them. Thanks!

Warning: You have unlinked kegs in your Cellar
Leaving kegs unlinked can lead to build-trouble and cause brews that depend on
those kegs to fail to run properly once built. Run `brew link` on these:
  python3
```
3. Make sure brew can properly symlink python3 by loosening `/usr/local` permissions per [jacknagel](https://github.com/Homebrew/legacy-homebrew/issues/9953#issuecomment-3800557):
`chown -R $USER /usr/local`
This renders a report such as:
```
chown: /usr/local/bin/vagrant: Operation not permitted
chown: /usr/local/.com.apple.installer.keep: Operation not permitted
chown: /usr/local/share/man/whatis: Operation not permitted
chown: /usr/local: Operation not permitted
```
4. Run `brew link python3` # oops, this doesn't seem to help - oh well, carry on
5. Install `pip` using `python get-pip.py` from here https://pip.readthedocs.io/en/stable/installing/
Except of course, it pukes here too:
```
$ python get-pip.py
Collecting pip
  Downloading pip-9.0.1-py2.py3-none-any.whl (1.3MB)
    100% |████████████████████████████████| 1.3MB 540kB/s 
Collecting wheel
  Using cached wheel-0.30.0-py2.py3-none-any.whl
Installing collected packages: pip, wheel
Exception:
Traceback (most recent call last):
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/basecommand.py", line 215, in main
    status = self.run(options, args)
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/commands/install.py", line 342, in run
    prefix=options.prefix_path,
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/req/req_set.py", line 784, in install
    **kwargs
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/req/req_install.py", line 851, in install
    self.move_wheel_files(self.source_dir, root=root, prefix=prefix)
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/req/req_install.py", line 1064, in move_wheel_files
    isolated=self.isolated,
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/wheel.py", line 345, in move_wheel_files
    clobber(source, lib_dir, True)
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/wheel.py", line 316, in clobber
    ensure_dir(destdir)
  File "/var/folders/xy/dyk7652d0h5b3_83hj2274g80000gn/T/tmpx2ZoHy/pip.zip/pip/utils/__init__.py", line 83, in ensure_dir
    os.makedirs(path)
  File "/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/os.py", line 157, in makedirs
    mkdir(name, mode)
OSError: [Errno 13] Permission denied: '/Library/Python/2.7/site-packages/pip-9.0.1.dist-info'
```
...until you run it as `sudo python get-pip.py`)
6. (Install pylint in a way that it can be consumed by VSCode)