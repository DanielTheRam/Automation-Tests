*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Pozitivni1
#zda command help obsahuje výraz "help"
    ${output} =         Run         help
    Log To Console      ${output}
    Log                 ${output}
    Should Contain      ${output}   HELP


Pozitivni2
#ověření verze pythonu, zda obsahuje výraz "python"
    ${output} =         Run         python -V
    Log To Console      ${output}
    Log                 ${output}
    Should Contain      ${output}   Python

Negativni1
#napsání nesmyslu
    ${output} =            Run         nesmysl
    Log To Console      ${output}
    Log                 ${output}
    Should Contain      ${output}      'nesmysl' is not recognized as an internal or external command

Negativni2
#dir do neexistujícího disku
    ${output} =             Run        dir D
    Log To Console      ${output}
    Log                 ${output}
    Should Contain      ${output}      File Not Found