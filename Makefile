run_all_in_parallel:
	make -j test_Windows_11_edge_latest test_MacOS_firefox_latest test_Windows_10_chrome_latest

test_Windows_11_edge_latest:
	robot  --variable platformName:"Windows 11" --variable browserName:Edge --variable browserVersion:latest --variable ROBOT_BROWSER:Edge --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_MacOS_firefox_latest:
	robot --variable platformName:"MacOS Monterey" --variable browserName:Firefox --variable browserVersion:latest --variable ROBOT_BROWSER:Firefox --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot

test_Windows_10_chrome_latest:
	robot --variable platformName:"Windows 10" --variable browserName:Chrome --variable browserVersion:latest --variable ROBOT_BROWSER:Chrome --variable visual:false --variable network:false --variable console:false Tests/sample_test.robot
