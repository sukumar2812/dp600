[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Store = let
  Source = Excel.Workbook(File.Contents("C:\Users\Sukumar Bera\Downloads\Contoso Small.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Store", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"StoreKey", Int64.Type}, {"Store Code", Int64.Type}, {"Country", type text}, {"State", type text}, {"Name", type text}, {"Square Meters", Int64.Type}, {"Open Date", type date}, {"Close Date", type date}, {"Status", type text}})
in
  #"Changed column type";
shared Sales = let
  Source = Excel.Workbook(File.Contents("C:\Users\Sukumar Bera\Downloads\Contoso Small.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Sales", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Order Number", Int64.Type}, {"Line Number", Int64.Type}, {"Order Date", type date}, {"Delivery Date", type date}, {"CustomerKey", Int64.Type}, {"StoreKey", Int64.Type}, {"ProductKey", Int64.Type}, {"Quantity", Int64.Type}, {"Unit Price", type number}, {"Net Price", type number}, {"Unit Cost", type number}, {"Currency Code", type text}, {"Exchange Rate", Int64.Type}})
in
  #"Changed column type";
shared Product = let
  Source = Excel.Workbook(File.Contents("C:\Users\Sukumar Bera\Downloads\Contoso Small.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Product", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"ProductKey", Int64.Type}, {"Product Code", Int64.Type}, {"Product Name", type text}, {"Manufacturer", type text}, {"Brand", type text}, {"Color", type text}, {"Weight Unit Measure", type text}, {"Weight", type text}, {"Unit Cost", type number}, {"Unit Price", type number}, {"Subcategory Code", Int64.Type}, {"Subcategory", type text}, {"Category Code", Int64.Type}, {"Category", type text}})
in
  #"Changed column type";
shared Date = let
  Source = Excel.Workbook(File.Contents("C:\Users\Sukumar Bera\Downloads\Contoso Small.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Date", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"Date", type date}, {"Year", Int64.Type}, {"Year Quarter", type text}, {"Year Quarter Number", Int64.Type}, {"Quarter", type text}, {"Year Month", type date}, {"Year Month Short", type date}, {"Year Month Number", Int64.Type}, {"Month", type text}, {"Month Short", type text}, {"Month Number", Int64.Type}, {"Day of Week", type text}, {"Day of Week Short", type text}, {"Day of Week Number", Int64.Type}, {"Working Day", type logical}, {"Working Day Number", Int64.Type}, {"End of Month", type date}})
in
  #"Changed column type";
shared Customer = let
  Source = Excel.Workbook(File.Contents("C:\Users\Sukumar Bera\Downloads\Contoso Small.xlsx"), null, true),
  #"Navigation 1" = Source{[Item = "Customer", Kind = "Sheet"]}[Data],
  #"Promoted headers" = Table.PromoteHeaders(#"Navigation 1", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"CustomerKey", Int64.Type}, {"Gender", type text}, {"Name", type text}, {"Address", type text}, {"City", type text}, {"State Code", type text}, {"State", type text}, {"Zip Code", type text}, {"Country Code", type text}, {"Country", type text}, {"Continent", type text}, {"Birthday", type date}, {"Age", Int64.Type}})
in
  #"Changed column type";
