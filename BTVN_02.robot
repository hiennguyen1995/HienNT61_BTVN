*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[AUT_02] - Bài tập về nhà 02
    [Documentation]    Bài tập về nhà 02
    [Tags]    BTVN_02
     
    Truy cập trang    https://tiki.vn/    chrome
	Tìm kiếm cụm từ    //input[@data-view-id="main_search_form_input"]    nồi chiên
	Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2    nồi chiên không dầu
	Click vào sản phẩm thứ    3
    Sleep    10s
	Click "Chọn mua"    //button[@data-view-id = "pdp_add_to_cart_button"]
	Verify popup có chứa    Xin chào
    Sleep    10s
    
*** Keywords ***
Truy cập trang
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

Tìm kiếm cụm từ
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

Click vào "nồi chiên không dầu" trong gợi ý tìm kiếm bước 2
    [Arguments]    ${text}
    Wait Until Element Is Enabled    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]    10s
    Click Element    //a[@data-view-id = "search_suggestion_keyword_item"]/div[text() = "${text}"]

Click vào sản phẩm thứ
    [Arguments]    ${index}
    Wait Until Element Is Enabled    //div [@data-view-id = "product_list_container"]/div[${index}]    10s
    Click Element    //div [@data-view-id = "product_list_container"]/div[${index}]

Click "Chọn mua"
    [Arguments]    ${chon_mua_btn}
    Click Button    ${chon_mua_btn}

Verify popup có chứa
    [Arguments]    ${text}
    Wait Until Element Is Enabled    //h4[contains(text(), '${text}')]