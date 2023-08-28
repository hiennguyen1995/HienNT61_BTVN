*** Settings ***

Library    SeleniumLibrary


*** Test Cases ***
[AUT_01] - Login Guru99
    [Documentation]    Login Guru99
    [Tags]    BTVN_01

    Truy câp trang    https://demo.guru99.com/test/login.html    chrome
    Nhập Email address    //input[@id = "email" and @name = "email"]    testemail0708@gmail.com
    Nhập Password    //input[@id = "passwd" and @name = "passwd"]    0989973534
    Click button Sign in    //button[@id ="SubmitLogin"]
    Verify text    Successfully Logged in


*** Keywords ***

Truy câp trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Nhập Email address
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Nhập Password
    [Arguments]    ${locator}    ${pass}
    Input Password    ${locator}      ${pass}

Click button Sign in
    [Arguments]    ${Sign_in_btn}
    Click Button    ${Sign_in_btn}

Verify text
    [Arguments]    ${text}
    Wait Until Element Is Visible    //h3[contains(text(), "${text}")]