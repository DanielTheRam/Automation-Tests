*** Settings ***
Library    OperatingSystem

*** Test Cases ***

#První test
${output} =         Run     help
Log To Console      ${output}
Log                 ${output}
Should Contain      ${output}       For more information on a specific command, type HELP command-name

#Druhý test
${output} =         Run    help dir
Log To Console      ${output}
Log                 ${output}
Should Contain      ${output}       Specifies drive, directory, and/or files to list

#Třetí test
${output}           Run    help chyba
Log To Console      ${output}
Log                 ${output}
Should Contain      ${output}       This command is not supported by the help utility.