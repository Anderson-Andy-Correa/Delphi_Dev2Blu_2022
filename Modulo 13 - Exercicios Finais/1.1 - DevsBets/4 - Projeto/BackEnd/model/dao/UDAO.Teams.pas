unit UDAO.Teams;

interface

uses
  UDAO.Base;

type
  TDAOTeams = class (TDAOBase)
    public
      constructor create;

  end;

implementation

{ TDAOBets }

constructor TDAOTeams.create;
  begin
    FTabela := 'Team';
  end;

end.
