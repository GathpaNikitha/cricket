sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'com.nikitha.cricket.player',
            componentId: 'playerObjectPage',
            contextPath: '/player'
        },
        CustomPageDefinitions
    );
});