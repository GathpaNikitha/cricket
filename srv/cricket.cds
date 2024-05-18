using { com.nikitha.cricket as db} from '../db/schema';

service cricket {

    entity player as projection on db.player;
    entity cricketMatch as projection on db.cricketMatch;

}

annotate cricket.player with @odata.draft.enabled;
annotate cricket.cricketMatch with @odata.draft.enabled;
