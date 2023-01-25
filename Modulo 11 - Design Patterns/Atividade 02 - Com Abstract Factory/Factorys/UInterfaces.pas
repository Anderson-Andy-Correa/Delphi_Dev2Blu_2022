unit UInterfaces;

interface

Type
  INotebook = interface
    ['{1F7251D8-2BA6-4BD1-89D4-882A68108A01}']
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam : String;
  end;

  IDesktop = interface
    ['{DEDFE018-57D8-4D37-943A-83D314E3D25E}']
    function BuscarNomeProcessador : String;
    function BuscarTamanhoHD       : String;
  end;

  IFactoryMarca = interface
    ['{F985582D-AB38-4D21-984A-E552F8962AD0}']
    function COnsultarNotebook: INotebook;
    function ConsultarDesktop : IDesktop;
  end;
implementation

end.
