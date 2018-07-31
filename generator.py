import os
import sys

def function_begin(name):
    return 'function ' + name + ' {\n    '

def function_end():
    return '\n}\n'

def create_function(name, code):
    return function_begin(name) + code + function_end()

class Function(object):
    def __init__(self, name, code):
        self.name = name
        self.code = code
        
    def create(self):
        return create_function(self.name, self.code)

    @staticmethod
    def generate(functions):

        result = open(os.path.expanduser('~/dev/shell/shell.sh'), 'w') 

        result.write('echo hello\n')

        for fun in functions:

            function=Function(fun[0], fun[1])
            result.write(function.create())

        result.close()




