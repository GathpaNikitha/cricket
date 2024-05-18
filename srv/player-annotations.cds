namespace com.nikitha.cricket;

annotate com.nikitha.cricket.player with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Player Name',
            Value : playerName
        },
        {
            $Type : 'UI.DataField',
            Value : teamName
        },
        {
            $Type : 'UI.DataField',
            Value : battingAverage
        },
        {
            $Type : 'UI.DataField',
            Value : bowlingAverage
        },
        {
            $Type : 'UI.DataField',
            Value : matchesPlayed
        }
    ],  
);

annotate com.nikitha.cricket.player with @(       
    UI.FieldGroup #playerInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label:'Player Name',
            Value : playerName
        },
        {
            $Type : 'UI.DataField',
            Value : teamName
        },
        {
            $Type : 'UI.DataField',
            Value : battingAverage
        },
        {
            $Type : 'UI.DataField',
            Value : bowlingAverage
        },
        {
            $Type : 'UI.DataField',
            Value : matchesPlayed
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'playerInfoFacet',
            Label : 'player Information',
            Target : '@UI.FieldGroup#playerInformation',
        },
    ],    
);
