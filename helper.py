import os
import sys
import glob
import shutil
import platform
import subprocess

is_mac = platform.system() == 'Darwin'
is_win = platform.system() == 'Windows'
is_linux = not is_mac and not is_win

command = ''
path = ''

if len(sys.argv) > 1:
    command=sys.argv[1]

if len(sys.argv) > 2:
    path=sys.argv[2]

def move(src, dst):
    dirname = os.path.dirname(dst)
    if len(dirname) and not os.path.exists(dirname):
        os.makedirs(dirname)
    shutil.move(src, dst)

def run(commands = [], *args):
    child = subprocess.Popen(commands, stdout=subprocess.PIPE, shell=True)
    while child.poll() is None:
        output_line = child.stdout.readline()
        if (output_line):
            print(output_line.decode("utf-8")[:-1])
    code = child.returncode
    if (code):
        os.sys.exit(code)

def rm(path):
    if (is_mac or is_linux):
        run(['rm -rf ' + path])
        return
    if os.path.isdir(path) and not os.path.islink(path):
        run(['rmdir', '/s', '/q', path])
    elif os.path.exists(path):
        run(['del', path])

def stat(path):
    print(os.stat(path))

if command == 'hello':
    print('hello')

if command == 'rm':
    rm(path)
    sys.exit()

if command == 'stat':
    stat(path)
    sys.exit()

if command == 'cleanclone':
    temp = '__temp'
    rm(temp)
    #run(['git', 'clone', '--depth=1', '--branch=master', "git://github.com/" + path, temp])

    gitcall = 'git clone --depth=1 --branch=master git://github.com/' + path + ' ' + temp
    print(gitcall)
    run([gitcall])
    rm('__todelete1')
    rm('__todelete2')
    move(temp + '/.gitignore', '__todelete1')
    move(temp + '/.git', '__todelete2')
    rm('__todelete1')
    rm('__todelete2')

    os.chdir(temp)

    files = glob.glob('**/*.*', recursive=True)

    for file in files:
        move('./' + file, '../' + file) 

    os.chdir('..')

    rm(temp)
