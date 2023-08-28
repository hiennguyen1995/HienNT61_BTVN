*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUT_03] - Bài tập về nhà 03
    [Documentation]    Bài tập về nhà 03
    [Tags]    BTVN_03

    Truy cập trang    https://www.google.com/    chrome
	Tìm kiếm từ khóa    //textarea[@id = "APjFqb"]    MSB  
    Button Tìm Kiếm
	Click vào kết quả tìm kiếm số    1
	Tắt Popup
	Verify trang có chứa    Chọn thẻ phù hợp với bạn


*** Keywords ***
Truy cập trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Tìm kiếm từ khóa
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}
    #Click Button    //div[@jsname="VlcLAe"]//input[@class = "gNO89b"]
Button Tìm Kiếm
    Click Button    //div[@jsname="VlcLAe"]//input[@class = "gNO89b"]

Click vào kết quả tìm kiếm số
    [Arguments]    ${index}
    Click Element    //div[@id = "rso"]/div[${index}]//h3[@class="LC20lb MBeuO DKV0Md"]

Tắt Popup
    Click Element    //div[@id = "fragment-34202-joci"]//span[@class = "pop-up-porlet-close-btn"]

Verify trang có chứa
    [Arguments]    ${text}
    Wait Until Element Is Enabled    //div[text() = "${text}"]    10s
    