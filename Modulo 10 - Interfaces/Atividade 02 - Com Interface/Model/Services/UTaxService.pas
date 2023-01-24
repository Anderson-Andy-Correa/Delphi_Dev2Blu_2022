unit UTaxService;

interface

type
  ITaxService = interface
    // Ctrl + Shift + G -> GUID
    ['{ED3B9AC1-3E41-4EFC-9C26-D8C75AFF901E}']

    function Tax(const aAmount: Double): Double;
  end;

implementation

end.
