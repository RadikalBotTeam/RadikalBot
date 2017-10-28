#!/bin/bash
COUNTER=1
while(true) do
./radikal.sh
curl "https://api.telegram.org/bot445755325:AAHMQMVsBxmd5ybrNdSmpUnOAqWhw60-MXU/sendmessage" -F "chat_id=353171541" -F "text=#NEWLaUnCh-#RadikalBot-Reloaded-${COUNTER}-times"
let COUNTER=COUNTER+1 
done
