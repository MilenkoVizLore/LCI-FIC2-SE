#!/bin/sh

HOST=$1
PORT=$2

[ "$HOST" ] || HOST="localhost"
[ "$PORT" ] || PORT="8089"
echo "Entering FIC2Lab smoke test sequence. LCI's validation procedure of SE Context Aware Recommendation (Activity and Context Recognition Modul) engaged. Target host: $HOST"
echo "Waiting for initialization of the docker image"
while ! (netcat -vz localhost $PORT &> /dev/null); do echo -n "."; sleep 5; done
echo ""
echo "service is running."
echo "Run smoke test for sending user's acceleration and gyroscope data..."
ITEM_RESULT=`curl -s -o /dev/null -X POST -w '%{http_code}' "http://$HOST:$PORT/ac/" -H 'Accept: application/json' -H 'Content-Type: application/json' -d '{"uuid":"46cf6430e66df4b4","acceleration":[{"timestamp":423611593054,"x":-1.8115,"y":-14.873,"z":-1.3484},{"timestamp":423611593081,"x":0.24517,"y":-14.07,"z":-0.84446},{"timestamp":423611593108,"x":-0.57205,"y":-14.628,"z":-1.757},{"timestamp":423611593135,"x":-0.69464,"y":-12.939,"z":-3.0918},{"timestamp":423611593162,"x":0.8717,"y":-12,"z":-1.5663},{"timestamp":423611593189,"x":0.20431,"y":-11.468,"z":4.3449},{"timestamp":423611593216,"x":0.50395,"y":-12.503,"z":4.3177},{"timestamp":423611593243,"x":2.6015,"y":-16.086,"z":3.4187},{"timestamp":423611593270,"x":4.9442,"y":-17.87,"z":2.0839},{"timestamp":423611593297,"x":4.699,"y":-15.963,"z":2.2201},{"timestamp":423611593324,"x":4.5083,"y":-14.492,"z":2.0294},{"timestamp":423611593351,"x":4.4947,"y":-11.101,"z":0.040861},{"timestamp":423611593378,"x":4.2768,"y":-10.529,"z":1.5391},{"timestamp":423611593405,"x":1.866,"y":-8.8805,"z":6.7557},{"timestamp":423611593432,"x":-1.4846,"y":-9.0167,"z":3.6503},{"timestamp":423611593459,"x":-1.471,"y":-4.7126,"z":2.2882},{"timestamp":423611593486,"x":-1.7706,"y":-2.9011,"z":3.5004},{"timestamp":423611593513,"x":0.24517,"y":-3.1327,"z":4.4402},{"timestamp":423611593540,"x":0.34051,"y":-3.1599,"z":3.9363},{"timestamp":423611593567,"x":-0.068102,"y":-2.9011,"z":3.0918},{"timestamp":423611593594,"x":0.83084,"y":-0.69464,"z":1.7025},{"timestamp":423611593621,"x":1.1169,"y":-0.68102,"z":0.57205},{"timestamp":423611593648,"x":2.3427,"y":-1.9068,"z":-1.2667},{"timestamp":423611593675,"x":10.161,"y":-13.116,"z":-12},{"timestamp":423611593702,"x":13.988,"y":-19.15,"z":-17.053},{"timestamp":423611593729,"x":8.9894,"y":-19.545,"z":-12.803},{"timestamp":423611593756,"x":5.4618,"y":-8.9077,"z":-6.5786},{"timestamp":423611593783,"x":5.5707,"y":-5.6388,"z":-5.5299},{"timestamp":423611593810,"x":4.6718,"y":-9.1256,"z":-3.6503},{"timestamp":423611593837,"x":2.8875,"y":-17.216,"z":-3.5958},{"timestamp":423611593864,"x":7.4776,"y":-12.544,"z":6.565},{"timestamp":423611593891,"x":6.5105,"y":-2.8875,"z":10.215},{"timestamp":423611593918,"x":0.9398,"y":-2.2882,"z":-2.2746},{"timestamp":423611593945,"x":1.7706,"y":-9.6704,"z":-1.3484},{"timestamp":423611593972,"x":2.1929,"y":-11.809,"z":7.2324},{"timestamp":423611593999,"x":0.89894,"y":-12.953,"z":7.7772},{"timestamp":423611594026,"x":-2.261,"y":-15.05,"z":7.641},{"timestamp":423611594053,"x":-4.0316,"y":-16.821,"z":-0.24517},{"timestamp":423611594080,"x":-3.1327,"y":-14.097,"z":-1.0624},{"timestamp":423611594107,"x":-1.8387,"y":-10.992,"z":-0.42223},{"timestamp":423611594134,"x":0.38137,"y":-7.3141,"z":-0.38137},{"timestamp":423611594161,"x":1.4574,"y":-7.641,"z":-1.2258},{"timestamp":423611594188,"x":2.2201,"y":-6.96,"z":-0.95342},{"timestamp":423611594215,"x":1.3212,"y":-7.8045,"z":-0.44947},{"timestamp":423611594242,"x":0.5993,"y":-8.2539,"z":-0.17706},{"timestamp":423611594269,"x":0.27241,"y":-8.322,"z":0.1362},{"timestamp":423611594296,"x":0.78998,"y":-8.6217,"z":0.28603},{"timestamp":423611594323,"x":1.3893,"y":-9.2891,"z":0.64016},{"timestamp":423611594350,"x":1.471,"y":-10.556,"z":1.2803},{"timestamp":423611594377,"x":1.2395,"y":-10.828,"z":1.1577},{"timestamp":423611594404,"x":-0.21793,"y":-12.054,"z":-0.24517},{"timestamp":423611594431,"x":-1.7025,"y":-13,"z":-1.1577},{"timestamp":423611594458,"x":-3.8546,"y":-12.967,"z":-3.5822},{"timestamp":423611594485,"x":-3.8954,"y":-11.4,"z":-2.5061},{"timestamp":423611594512,"x":-2.6287,"y":-13.511,"z":-1.8387},{"timestamp":423611594539,"x":-2.261,"y":-15.759,"z":-0.20431},{"timestamp":423611594566,"x":-0.55843,"y":-15.541,"z":-1.0624},{"timestamp":423611594593,"x":0.43585,"y":-13.307,"z":-2.9011},{"timestamp":423611594620,"x":3.2553,"y":-10.569,"z":0.6674},{"timestamp":423611594647,"x":1.9886,"y":-9.5479,"z":3.3915},{"timestamp":423611594674,"x":0.27241,"y":-11.605,"z":4.2768},{"timestamp":423611594701,"x":2.1929,"y":-18.851,"z":2.0431},{"timestamp":423611594728,"x":3.4459,"y":-18.578,"z":1.8251},{"timestamp":423611594755,"x":4.0316,"y":-17.311,"z":1.9068},{"timestamp":423611594782,"x":3.7047,"y":-15.309,"z":1.3484},{"timestamp":423611594809,"x":4.0725,"y":-11.863,"z":-0.14982},{"timestamp":423611594836,"x":3.9363,"y":-9.6432,"z":1.7025},{"timestamp":423611594863,"x":1.7706,"y":-9.2482,"z":6.0611},{"timestamp":423611594890,"x":1.7706,"y":-9.2482,"z":6.0611},{"timestamp":423611594917,"x":1.7706,"y":-9.2482,"z":6.0611},{"timestamp":423611594944,"x":-1.3484,"y":-1.9341,"z":3.6775},{"timestamp":423611594971,"x":-0.85808,"y":-2.3427,"z":4.5901},{"timestamp":423611594998,"x":0.095342,"y":-2.2882,"z":3.514},{"timestamp":423611595025,"x":-0.040861,"y":-1.9613,"z":2.9148},{"timestamp":423611595052,"x":0.01362,"y":-0.8717,"z":2.1929},{"timestamp":423611595079,"x":1.3757,"y":-1.7298,"z":-0.57205},{"timestamp":423611595106,"x":4.2768,"y":-5.3392,"z":-5.8976},{"timestamp":423611595133,"x":12.367,"y":-17.025,"z":-15.868},{"timestamp":423611595160,"x":12.34,"y":-19.45,"z":-16.154},{"timestamp":423611595187,"x":6.8238,"y":-16.195,"z":-8.6217},{"timestamp":423611595214,"x":6.8919,"y":-11.005,"z":-5.0531},{"timestamp":423611595241,"x":7.6683,"y":-9.5887,"z":-4.7399},{"timestamp":423611595268,"x":6.1836,"y":-15.091,"z":-6.7966},{"timestamp":423611595295,"x":5.4345,"y":-11.754,"z":7.1507},{"timestamp":423611595322,"x":0.58567,"y":8.7034,"z":12.708},{"timestamp":423611595349,"x":0.58567,"y":7.4095,"z":9.6432},{"timestamp":423611595376,"x":2.8467,"y":-13.811,"z":0.47671},{"timestamp":423611595403,"x":4.0316,"y":-13.906,"z":8.5808},{"timestamp":423611595430,"x":2.2337,"y":-13.811,"z":8.9622},{"timestamp":423611595457,"x":-3.8546,"y":-15.119,"z":5.9793},{"timestamp":423611595484,"x":-4.6173,"y":-16.903,"z":1.6208},{"timestamp":423611595511,"x":-3.8954,"y":-15.636,"z":0.55843},{"timestamp":423611595538,"x":-1.9886,"y":-11.073,"z":0.69464},{"timestamp":423611595565,"x":-0.49033,"y":-8.7579,"z":0.31327},{"timestamp":423611595592,"x":1.757,"y":-7.7091,"z":-1.2531},{"timestamp":423611595619,"x":2.4925,"y":-7.3141,"z":-0.64016},{"timestamp":423611595646,"x":2.4517,"y":-7.0553,"z":-0.44947},{"timestamp":423611595673,"x":1.3893,"y":-7.355,"z":-0.42223},{"timestamp":423611595700,"x":0.35413,"y":-7.7772,"z":0.36775},{"timestamp":423611595727,"x":0.7355,"y":-7.9543,"z":0.35413},{"timestamp":423611595754,"x":1.6344,"y":-9.5751,"z":0.83084},{"timestamp":423611595781,"x":1.9205,"y":-10.311,"z":1.3757},{"timestamp":423611595808,"x":1.6072,"y":-10.828,"z":1.4165},{"timestamp":423611595835,"x":0.5993,"y":-11.414,"z":0.50395},{"timestamp":423611595862,"x":-2.0703,"y":-14.138,"z":-1.4574},{"timestamp":423611595889,"x":-4.0044,"y":-13.062,"z":-5.2438},{"timestamp":423611595916,"x":-3.514,"y":-10.515,"z":-3.051},{"timestamp":423611595943,"x":-1.5255,"y":-13.579,"z":-2.833},{"timestamp":423611595970,"x":-1.5255,"y":-14.478,"z":-0.47671},{"timestamp":423611595997,"x":-0.28603,"y":-15.091,"z":-1.1032},{"timestamp":423611596024,"x":-0.65378,"y":-13.443,"z":-2.5061},{"timestamp":423611596051,"x":0.83084,"y":-12.476,"z":1.7979},{"timestamp":423611596078,"x":0.40861,"y":-12.217,"z":5.0259},{"timestamp":423611596105,"x":1.076,"y":-14.601,"z":4.7535},{"timestamp":423611596132,"x":2.8194,"y":-18.401,"z":3.6094},{"timestamp":423611596159,"x":4.9578,"y":-18.66,"z":2.1929},{"timestamp":423611596186,"x":5.1349,"y":-15.881,"z":2.2882},{"timestamp":423611596213,"x":4.0044,"y":-11.918,"z":0.6674},{"timestamp":423611596240,"x":2.547,"y":-11.182,"z":0.14982},{"timestamp":423611596267,"x":0.78998,"y":-10.488,"z":2.1248},{"timestamp":423611596294,"x":-0.7355,"y":-10.746,"z":5.9521},{"timestamp":423611596321,"x":-1.4438,"y":-6.2245,"z":4.2223},{"timestamp":423611596348,"x":-1.3076,"y":-4.0861,"z":3.4732},{"timestamp":423611596375,"x":-1.4165,"y":-1.9341,"z":4.2223},{"timestamp":423611596402,"x":0.1362,"y":-2.3836,"z":4.413},{"timestamp":423611596429,"x":0.28603,"y":-2.5742,"z":3.7047},{"timestamp":423611596456,"x":-0.027241,"y":-2.5879,"z":2.6015},{"timestamp":423611596483,"x":0.98067,"y":-1.1169,"z":1.6344}],"gyroscope":[{"timestamp":423611593054,"x":-0.53206,"y":-3.1869,"z":0.23976},{"timestamp":423611593081,"x":-0.25229,"y":-1.7966,"z":0.40745},{"timestamp":423611593108,"x":-1.0492,"y":0.29138,"z":0.2923},{"timestamp":423611593135,"x":-2.372,"y":1.0082,"z":0.34972},{"timestamp":423611593162,"x":-2.7901,"y":0.65485,"z":0.22724},{"timestamp":423611593189,"x":-3.0504,"y":0.90316,"z":0.23213},{"timestamp":423611593216,"x":-2.7871,"y":0.20617,"z":0.29963},{"timestamp":423611593243,"x":-2.5388,"y":-0.020464,"z":-0.38607},{"timestamp":423611593270,"x":-2.583,"y":1.6964,"z":-1.033},{"timestamp":423611593297,"x":-2.6179,"y":2.9557,"z":-1.2294},{"timestamp":423611593324,"x":-2.2797,"y":2.7602,"z":-1.2016},{"timestamp":423611593351,"x":-2.7578,"y":1.2013,"z":-1.0427},{"timestamp":423611593378,"x":-3.2312,"y":0.13897,"z":-0.75106},{"timestamp":423611593405,"x":-3.2788,"y":1.098,"z":-0.36163},{"timestamp":423611593432,"x":-3.2748,"y":3.8558,"z":0.54398},{"timestamp":423611593459,"x":-3.3585,"y":1.8222,"z":0.60323},{"timestamp":423611593486,"x":-2.5904,"y":2.3048,"z":-0.20281},{"timestamp":423611593513,"x":-1.905,"y":2.7345,"z":-0.16829},{"timestamp":423611593540,"x":-1.3338,"y":2.9086,"z":-0.021075},{"timestamp":423611593567,"x":-0.68661,"y":2.627,"z":0.19914},{"timestamp":423611593594,"x":0.3375,"y":1.584,"z":0.7138},{"timestamp":423611593621,"x":1.0913,"y":0.56261,"z":1.0886},{"timestamp":423611593648,"x":1.5595,"y":-0.040623,"z":1.2608},{"timestamp":423611593675,"x":2.1417,"y":-1.4053,"z":1.3027},{"timestamp":423611593702,"x":0.84971,"y":0.50305,"z":0.21991},{"timestamp":423611593729,"x":-1.2318,"y":1.8928,"z":-0.56047},{"timestamp":423611593756,"x":-1.1481,"y":0.16585,"z":-0.51068},{"timestamp":423611593783,"x":-0.93798,"y":2.0049,"z":-0.34758},{"timestamp":423611593810,"x":-0.59193,"y":2.7782,"z":-0.23702},{"timestamp":423611593837,"x":-0.12584,"y":0.66706,"z":0.22999},{"timestamp":423611593864,"x":-1.0556,"y":-3.036,"z":0.5284},{"timestamp":423611593891,"x":0.66309,"y":1.5088,"z":-0.055283},{"timestamp":423611593918,"x":0.96395,"y":-1.1353,"z":0.057727},{"timestamp":423611593945,"x":1.7443,"y":-4.2073,"z":-0.0097738},{"timestamp":423611593972,"x":3.0391,"y":-4.4211,"z":-0.62522},{"timestamp":423611593999,"x":3.6139,"y":-4.2162,"z":-0.16952},{"timestamp":423611594026,"x":4.3842,"y":-2.7235,"z":0.55986},{"timestamp":423611594053,"x":4.1023,"y":-2.1475,"z":0.82956},{"timestamp":423611594080,"x":1.6356,"y":-2.6903,"z":1.5882},{"timestamp":423611594107,"x":1.6887,"y":-2.3772,"z":1.5663},{"timestamp":423611594134,"x":2.7721,"y":-0.3598,"z":1.0959},{"timestamp":423611594161,"x":2.6741,"y":0.97677,"z":0.90622},{"timestamp":423611594188,"x":1.4948,"y":0.39187,"z":0.74495},{"timestamp":423611594215,"x":1.175,"y":-0.92699,"z":0.58185},{"timestamp":423611594242,"x":1.3451,"y":-2.5623,"z":0.49908},{"timestamp":423611594269,"x":1.2865,"y":-2.5595,"z":0.36805},{"timestamp":423611594296,"x":1.3222,"y":-1.6924,"z":0.13103},{"timestamp":423611594323,"x":1.3824,"y":-1.1842,"z":-0.14142},{"timestamp":423611594350,"x":1.5837,"y":-0.90713,"z":-0.38026},{"timestamp":423611594377,"x":1.6704,"y":-0.92577,"z":-0.51557},{"timestamp":423611594404,"x":1.6017,"y":0.13225,"z":-0.62003},{"timestamp":423611594431,"x":1.5296,"y":1.2706,"z":-0.48289},{"timestamp":423611594458,"x":0.65546,"y":0.098044,"z":-0.18234},{"timestamp":423611594485,"x":-0.30727,"y":-1.8952,"z":-0.25901},{"timestamp":423611594512,"x":-0.59437,"y":-2.4343,"z":-0.080023},{"timestamp":423611594539,"x":-0.66035,"y":-1.0608,"z":0.26603},{"timestamp":423611594566,"x":-1.1707,"y":0.49511,"z":0.48258},{"timestamp":423611594593,"x":-2.0046,"y":1.7233,"z":0.50519},{"timestamp":423611594620,"x":-2.8549,"y":1.2547,"z":0.21625},{"timestamp":423611594647,"x":-2.9819,"y":1.5052,"z":-0.081245},{"timestamp":423611594674,"x":-2.7046,"y":0.57146,"z":-0.073609},{"timestamp":423611594701,"x":-2.525,"y":0.82589,"z":-0.61178},{"timestamp":423611594728,"x":-2.7495,"y":2.3155,"z":-1.2929},{"timestamp":423611594755,"x":-2.5268,"y":2.9612,"z":-1.5898},{"timestamp":423611594782,"x":-2.098,"y":3.1059,"z":-1.4529},{"timestamp":423611594809,"x":-2.5519,"y":1.7685,"z":-1.1075},{"timestamp":423611594836,"x":-3.2141,"y":-0.98471,"z":-0.74373},{"timestamp":423611594863,"x":-3.0476,"y":0.21502,"z":-0.36682},{"timestamp":423611594890,"x":-3.4129,"y":2.6377,"z":0.41997},{"timestamp":423611594917,"x":-3.375,"y":2.1157,"z":0.4215},{"timestamp":423611594944,"x":-2.5937,"y":2.2712,"z":-0.035125},{"timestamp":423611594971,"x":-1.6741,"y":2.4538,"z":-0.29199},{"timestamp":423611594998,"x":-1.062,"y":2.6603,"z":-0.098655},{"timestamp":423611595025,"x":-0.40012,"y":2.4398,"z":0.19028},{"timestamp":423611595052,"x":0.28436,"y":1.7743,"z":0.53848},{"timestamp":423611595079,"x":0.96761,"y":0.68997,"z":0.9896},{"timestamp":423611595106,"x":1.6072,"y":-0.67653,"z":1.3732},{"timestamp":423611595133,"x":1.5351,"y":-0.42028,"z":1.1451},{"timestamp":423611595160,"x":-0.22846,"y":1.8121,"z":-0.1518},{"timestamp":423611595187,"x":-1.4099,"y":0.96853,"z":-0.63438},{"timestamp":423611595214,"x":-1.1689,"y":0.51801,"z":-0.62278},{"timestamp":423611595241,"x":-0.98746,"y":2.325,"z":-0.44715},{"timestamp":423611595268,"x":-0.60995,"y":1.7361,"z":-0.21014},{"timestamp":423611595295,"x":-1.7003,"y":-1.3451,"z":-0.36744},{"timestamp":423611595322,"x":-0.56261,"y":0.95875,"z":-0.2193},{"timestamp":423611595349,"x":1.6029,"y":-0.78282,"z":0.18479},{"timestamp":423611595376,"x":1.6237,"y":-4.8338,"z":0.44654},{"timestamp":423611595403,"x":3.5198,"y":-4.653,"z":-0.71044},{"timestamp":423611595430,"x":3.9893,"y":-4.474,"z":-0.48167},{"timestamp":423611595457,"x":4.6105,"y":-3.7498,"z":0.65546},{"timestamp":423611595484,"x":3.7141,"y":-2.8515,"z":1.4126},{"timestamp":423611595511,"x":2.2623,"y":-2.3802,"z":1.1188},{"timestamp":423611595538,"x":2.0681,"y":-1.6747,"z":1.0739},{"timestamp":423611595565,"x":2.6194,"y":0.070555,"z":1.3274},{"timestamp":423611595592,"x":2.5574,"y":0.65149,"z":1.1209},{"timestamp":423611595619,"x":1.7159,"y":0.80084,"z":0.58215},{"timestamp":423611595646,"x":1.6063,"y":-0.6521,"z":0.72388},{"timestamp":423611595673,"x":1.3509,"y":-2.4505,"z":0.5733},{"timestamp":423611595700,"x":0.94592,"y":-3.1951,"z":0.56291},{"timestamp":423611595727,"x":1.2764,"y":-2.941,"z":0.34758},{"timestamp":423611595754,"x":1.7477,"y":-1.6225,"z":-0.08094},{"timestamp":423611595781,"x":1.6527,"y":-1.441,"z":-0.38087},{"timestamp":423611595808,"x":1.6338,"y":-0.98288,"z":-0.562},{"timestamp":423611595835,"x":1.66,"y":-0.11576,"z":-0.59895},{"timestamp":423611595862,"x":1.5898,"y":2.6903,"z":-0.32345},{"timestamp":423611595889,"x":0.73915,"y":1.9236,"z":-0.018326},{"timestamp":423611595916,"x":-0.1237,"y":-2.4202,"z":-0.19303},{"timestamp":423611595943,"x":-0.66645,"y":-3.9593,"z":0.25045},{"timestamp":423611595970,"x":-0.79229,"y":-2.0412,"z":0.21411},{"timestamp":423611595997,"x":-1.4759,"y":0.96272,"z":0.36194},{"timestamp":423611596024,"x":-2.5097,"y":1.328,"z":0.32834},{"timestamp":423611596051,"x":-3.0357,"y":0.77885,"z":0.21228},{"timestamp":423611596078,"x":-2.974,"y":-0.000611,"z":0.35033},{"timestamp":423611596105,"x":-2.668,"y":-0.87965,"z":0.2532},{"timestamp":423611596132,"x":-2.5055,"y":0.03207,"z":-0.41111},{"timestamp":423611596159,"x":-2.7959,"y":2.0372,"z":-1.2446},{"timestamp":423611596186,"x":-2.799,"y":2.9917,"z":-1.4926},{"timestamp":423611596213,"x":-2.4089,"y":3.1679,"z":-1.4178},{"timestamp":423611596240,"x":-2.711,"y":2.1994,"z":-0.6185},{"timestamp":423611596267,"x":-3.1554,"y":0.069333,"z":-0.18357},{"timestamp":423611596294,"x":-3.0055,"y":0.73976,"z":0.24893},{"timestamp":423611596321,"x":-3.8188,"y":3.0583,"z":0.53206},{"timestamp":423611596348,"x":-3.3246,"y":2.4254,"z":0.37538},{"timestamp":423611596375,"x":-2.5559,"y":2.7739,"z":-0.15394},{"timestamp":423611596402,"x":-1.8589,"y":2.956,"z":-0.2306},{"timestamp":423611596429,"x":-0.89644,"y":2.8506,"z":-0.033292},{"timestamp":423611596456,"x":-0.56536,"y":2.5678,"z":0.093462},{"timestamp":423611596483,"x":0.11637,"y":1.8708,"z":0.39798}],"location":[{"timestamp":423611596321,"coords":{"latitude":44.802416,"longitude":20.465601}},{"timestamp":423611595214,"coords":{"latitude":44.802416,"longitude":20.465601}}],"wifi":[{"ssids":["Ninja","Turtle"],"timestamp":423611596321},{"ssids":["Ninja2","Turtle"],"timestamp":423611595214}]}'`
if [ $ITEM_RESULT -ne "201" ]; then
	echo "Curl command for sending user's acceleration and gyroscope data failed. Validation procedure terminated."
        echo "Debugging information: HTTP code $ITEM_RESULT instead of 200 expected from $HOST"
	exit 1;
else
	echo "Curl command for sending user's acceleration and gyroscope data OK."
fi
echo "Run smoke test for getting user's current activity vector"
ITEM_RESULT2=`curl -s -o /dev/null -w '%{http_code}' "http://$HOST:$PORT/ac/?uuid=46cf6430e66df4b4&alg=svm&fs=standard&curr_act=false"`
if [ $ITEM_RESULT2 -ne "200" ]; then
	echo "Curl command for getting user's current activity vector failed. Validation procedure terminated."
	echo "Debugging information: HTTP code $ITEM_RESULT2 instead of 200 expected from $HOST"
	exit 1; 
else
	echo "Curl command for getting user's current activity vector OK."
fi
echo "Smoke test completed. LCI component validation procedure succeeded. Over."
exit 0;
