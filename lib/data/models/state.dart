class State {
  String _state;
  String _stateCode;
  String _lastUpdatedTime;
  String _stateNotes;
  int _active;
  int _confirmed;
  int _deaths;
  int _recovered;
  int _todayConfirmed;
  int _todayRecovered;
  int _todayDeaths;

  State({
    String state, 
    String stateCode, 
    String lastUpdatedTime, 
    String stateNotes, 
    int active, 
    int confirmed, 
    int deaths, 
    int recovered, 
    int todayConfirmed, 
    int todayRecovered, 
    int todayDeaths }) {
      this._state = state;
      this._stateCode = stateCode;
      this._lastUpdatedTime = lastUpdatedTime;
      this._stateNotes = stateNotes;
      this._active = active;
      this._confirmed = confirmed;
      this._deaths = deaths;
      this._recovered = recovered;
      this._todayConfirmed = todayConfirmed;
      this._todayRecovered = todayRecovered;
      this._todayDeaths = todayDeaths;
    }

    factory State.fromJson(Map<String, dynamic> json) {
      return State (
        state: json["state"],
        stateCode: json["statecode"],
        lastUpdatedTime: json["lastupdatedtime"],
        stateNotes: json["statenotes"],
        active: int.tryParse(json["active"]) ?? 0,
        confirmed: int.tryParse(json["confirmed"]) ?? 0,
        recovered: int.tryParse(json["recovered"]) ?? 0,
        deaths: int.tryParse(json["deaths"]) ?? 0,
        todayConfirmed: int.tryParse(json["deltaconfirmed"]) ?? 0,
        todayDeaths: int.tryParse(json["deltadeaths"]) ?? 0,
        todayRecovered: int.tryParse(json["deltarecovered"]) ?? 0,
      );
    }

    set state(String state) => this._state = state;
    set stateCode(String stateCode) => this._stateCode = stateCode;
    set lastUpdatedTime(String lastUpdatedTime) => this._lastUpdatedTime = lastUpdatedTime;
    set stateNotes(String stateNotes) => this._stateNotes = stateNotes;
    set active(int active) => this._active = active;
    set confirmed(int confirmed) => this._confirmed = confirmed;
    set deaths(int deaths) => this._deaths = deaths;
    set recovered(int recovered) => this._recovered = recovered;
    set todayConfirmed(int todayConfirmed) => this._todayConfirmed = todayConfirmed;
    set todayRecovered(int todayRecovered) => this. todayRecovered = todayRecovered;
    set todayDeaths(int todayDeaths) => this._todayDeaths = todayDeaths;

    String get state => this._state;
    String get stateCode => this._stateCode;
    String get lastUpdatedTime => this._lastUpdatedTime;
    String get stateNotes => this._stateNotes;
    int get active => this._active;
    int get confirmed => this._confirmed;
    int get deaths => this._deaths;
    int get recovered => this._recovered;
    int get todayConfirmed => this._todayConfirmed;
    int get todayRecovered => this._todayRecovered;
    int get todayDeaths => this._todayDeaths;

}