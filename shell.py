from generator import Function

clouddir="/Users/$USER/Google\ Drive"

Function.generate([

        Function('res', '. ~/.bash_profile '),

        Function('subl', '/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'),
        Function('subll', 'subl .'),

        Function('dev', 'cd ' + clouddir + '/dev'),

        Function('cdal', 'cd ' + clouddir + '//docs/.shell/'),
        Function('al', 'cdal\n   subll'),

        Function('op', 'open .'),


    ])