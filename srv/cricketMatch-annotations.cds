namespace com.nikitha.cricket;

annotate com.nikitha.cricket.cricketMatch with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Label:'Match ID',
            Value : matchID
        },
        {
            $Type : 'UI.DataField',
            Value : matchDate
        },
        {
            $Type : 'UI.DataField',
            Value : opponentTeam
        },
        {
            $Type : 'UI.DataField',
            Value : venue
        },
        {
            $Type : 'UI.DataField',
            Value : result
        }
    ],  
);

annotate com.nikitha.cricket.cricketMatch with @(       
    UI.FieldGroup #cricketMatchInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        {
            $Type : 'UI.DataField',
            Label:'Match ID',
            Value : matchID
        },
        {
            $Type : 'UI.DataField',
            Value : matchDate
        },
        {
            $Type : 'UI.DataField',
            Value : opponentTeam
        },
        {
            $Type : 'UI.DataField',
            Value : venue
        },
        {
            $Type : 'UI.DataField',
            Value : result
        }
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'cricketMatchInfoFacet',
            Label : 'cricketMatch Information',
            Target : '@UI.FieldGroup#cricketMatchInformation',
        },
    ],    
);
