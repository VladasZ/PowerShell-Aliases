from generator import Function

aldir = '~/dev/shell'
args = '$@'

Function.generate([

    ('r', 'mkdir $@'),

    ('py', 'python3 $@'),

    ('_py', 'python3 ' + aldir + '/helper.py $@'),

    ('res', 'py ' + aldir + '/shell.py;. ' + aldir + '/shell.sh'),

    ('subll', 'subl .'),

    ('dev', 'cd  ~/dev'),
    ('sand', 'cd ~/dev/sand'),

    ('cdal', 'cd ' + aldir),
    ('al', 'cdal\n subll'),

    ('op', 'open .'),

    ('getbuild', '_py cleanclone vladasz/build'),
    ('build', 'py build.py')
])