#!/bin/bash
rm TASK_2 | mkdir TASK_2 | cd TASK_2 
git clone https://github.com/hhstechgroup/sample-application.git
cd sample-application
./gradlew clean bootJar
./gradlew test