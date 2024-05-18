sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/nikitha/cricket/cricketmatch/test/integration/FirstJourney',
		'com/nikitha/cricket/cricketmatch/test/integration/pages/cricketMatchList',
		'com/nikitha/cricket/cricketmatch/test/integration/pages/cricketMatchObjectPage'
    ],
    function(JourneyRunner, opaJourney, cricketMatchList, cricketMatchObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/nikitha/cricket/cricketmatch') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecricketMatchList: cricketMatchList,
					onThecricketMatchObjectPage: cricketMatchObjectPage
                }
            },
            opaJourney.run
        );
    }
);