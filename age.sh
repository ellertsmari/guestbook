
#!/bin/bash

# Þessi skripta biður notanda um aldur og segir svo til um hvort hann má drekka áfengi.

clear
echo "Hver er aldur þinn?"
read aldur

if [ $aldur -ge 16 ]; then
	echo "Þú hefur aldur til að drekka áfengi!"
	echo "."
	sleep 1	
	echo "."
	sleep 1
	echo "$aldur ára manneskja hefur drukkið að meðaltali u.þ.b. $(( $aldur * 100 )) lítra af bjór um ævina!"
else 
	echo "Þú þarft að bíða í $((16 - $aldur)) ár þar til þá mátt löglega drekka áfengi!"
fi
