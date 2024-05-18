namespace com.nikitha.cricket;
using { managed, cuid } from '@sap/cds/common';

entity player:managed, cuid {
    @title: 'Player Name'
    playerName: String(50);
    @title: 'Team Name'
    teamName: String(50);
    @title: 'Batting Average'
    battingAverage: Decimal(5,2);
    @title: 'Bowling Average'
    bowlingAverage: Decimal(5,2);
    @title: 'Matches Played'
    matchesPlayed: Integer;
}

entity cricketMatch:managed, cuid {
    @title: 'Match ID'
    matchID: UUID;
    @title: 'Match Date'
    matchDate: Date;
    @title: 'Opponent Team'
    opponentTeam: String(50);
    @title: 'Venue'
    venue: String(100);
    @title: 'Result'
    result: String(20);
}
