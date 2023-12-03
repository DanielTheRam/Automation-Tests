*** Test Cases ***

Sčítání
    ${result}=          Calculate   20  15  +
    Should Be Equal     ${result}   ${35}

Odečítání
    ${result} =         Calculate   20    15  -
    Should Be Equal     ${result}    ${5}

Násobení
    ${result} =         Calculate   20    15  *
    Should Be Equal     ${result}   ${300}
Dělení
    ${result} =         Calculate   20    4  /
    Should Be Equal As Numbers    ${result}   ${5}

*** Keywords ***

Calculate
    [Arguments]    ${x}  ${y}  ${operator}
    ${res}=        Evaluate    ${x} ${operator} ${y}
    [return]       ${res}