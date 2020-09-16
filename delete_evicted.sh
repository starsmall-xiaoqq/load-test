#!/bin/bash
for each in $(kubectl get pods -n jmeter |grep Evicted|awk '{print $1}');
do
	kubectl delete pods $each -n jmeter
done
