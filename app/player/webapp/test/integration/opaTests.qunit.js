sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/nikitha/cricket/player/test/integration/FirstJourney',
		'com/nikitha/cricket/player/test/integration/pages/playerList',
		'com/nikitha/cricket/player/test/integration/pages/playerObjectPage'
    ],
    function(JourneyRunner, opaJourney, playerList, playerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/nikitha/cricket/player') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheplayerList: playerList,
					onTheplayerObjectPage: playerObjectPage
                }
            },
            opaJourney.run
        );
    }
);