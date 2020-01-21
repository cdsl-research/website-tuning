rate := 50
duration := 5

attack:
	$(eval DATE := $(shell date +%H-%M-%S))
	cat target | vegeta attack -duration=${duration}s -rate=${rate}/1s | tee bin/results-rate${rate}-duration${duration}-${DATE}.bin | vegeta report | tee report-rate${rate}-duration${duration}-${DATE}

