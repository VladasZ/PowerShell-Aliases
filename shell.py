from generator import Function

clouddir="/Users/$USER/Google\ Drive"
aldir="/Users/$USER/Google\ Drive/docs/.shell/"
args="$@"

Function.generate([

    ('py', 'python3 $@'),

    ('_py', 'python3 ' + aldir + 'helper.py $@'),

    ('res', '. ~/.bash_profile '),

    ('subl', '/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'),
    ('subll', 'subl .'),

    ('dev', 'cd ' + clouddir + '/dev'),

    ('cdal', 'cd ' + aldir),
    ('al', 'cdal\n   subll'),

    ('op', 'open .'),

    ('getbuild', '_py cleanclone vladasz/build'),
    ('build', 'python3 build.py')
])