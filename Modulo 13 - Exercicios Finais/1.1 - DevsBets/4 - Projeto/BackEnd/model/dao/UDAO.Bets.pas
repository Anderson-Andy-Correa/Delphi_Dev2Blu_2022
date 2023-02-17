unit UDAO.Bets;

interface

uses
  UDAO.Base;

type
  TDAOBets = class (TDAOBase)
    public
      constructor create;

  end;

implementation

{ TDAOBets }

constructor TDAOBets.create;
  begin
    FTabela := 'Bets';
  end;

end.
