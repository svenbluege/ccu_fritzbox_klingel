#!/bin/bash

#
# call: fritzbox_ring.sh [call length in seconds]
# example: ./fritzbody_ring.sh 10
#

credentials="ccu:123456"
FB="fritz.box:49000"
Rufnummer="**9";

curl -4 -k --anyauth -u "${credentials}"                                    \
     "http://${FB}/upnp/control/x_voip"                                     \
     -H 'Content-Type: text/xml; charset="utf-8"'                           \
     -H 'SoapAction: urn:dslforum-org:service:X_VoIP:1#X_AVM-DE_DialNumber' \
     -d '<?xml version="1.0" encoding="utf-8"?>
         <s:Envelope s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
                     xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
            <s:Body>
               <u:X_AVM-DE_DialNumber xmlns:u="urn:dslforum-org:service:X_VoIP:1">
                 <NewX_AVM-DE_PhoneNumber>'${Rufnummer}'</NewX_AVM-DE_PhoneNumber>
               </u:X_AVM-DE_DialNumber>
            </s:Body>
         </s:Envelope>' > /dev/null 2>&1

sleep $1s

curl -4 -k --anyauth -u "${credentials}"                                    \
     "http://${FB}/upnp/control/x_voip"                                     \
     -H 'Content-Type: text/xml; charset="utf-8"'                           \
     -H 'SoapAction: urn:dslforum-org:service:X_VoIP:1#X_AVM-DE_DialHangup' \
     -d '<?xml version="1.0" encoding="utf-8"?>
         <s:Envelope s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"
                     xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
            <s:Body>
               <u:X_AVM-DE_DialHangup xmlns:u="urn:dslforum-org:service:X_VoIP:1"></u:X_AVM-DE_DialHangup>
            </s:Body>
         </s:Envelope>'  > /dev/null 2>&1