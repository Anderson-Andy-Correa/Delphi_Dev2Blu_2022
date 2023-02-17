unit UDAO.Matchs;

interface

uses
  UDAO.Base;

type
  TDAOMatchs = class (TDAOBase)
    public
      constructor create;

  end;

implementation

{ TDAOBets }

constructor TDAOMatchs.create;
  begin
    FTabela := 'Match';
  end;

end.
