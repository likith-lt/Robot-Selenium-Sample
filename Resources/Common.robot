*** Settings ***
Library  Selenium2Library
Library  LambdaTestStatus.py

*** Variables ***

@{_tmp}
    ...  browserName: ${browserName},
    ...  platform: ${platformName},
    ...  version: ${browserVersion},
    ...  visual: ${visual},
    ...  network: ${network},
    ...  console: ${console},
    ...  build: Robot - Python,
    ...  name: Robot Demo Test
    

${BROWSER}          ${ROBOT_BROWSER}
${CAPABILITIES}     ${EMPTY.join(${_tmp})}
${REMOTE_URL}       http://%{LT_USERNAME}:%{LT_ACCESS_KEY}@hub.lambdatest.com/wd/hub
${TIMEOUT}          3000

*** Keywords ***

Open test browser
    [Timeout]   ${TIMEOUT}
    Open browser  https://stage-demo.lambdatest.com/  browser=${BROWSER}
    ...  remote_url=${REMOTE_URL}
    ...  desired_capabilities=${CAPABILITIES}

Close test browser
    Run keyword if  '${REMOTE_URL}' != ''
    ...  Report Lambdatest Status
    ...  ${TEST_NAME} 
    ...  ${TEST_STATUS} 
    Close all browsers