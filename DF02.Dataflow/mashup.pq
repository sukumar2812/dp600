[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "Query1_DataDestination", IsNewTarget = true], Settings = [Kind = "Manual", AllowCreation = true, ColumnSettings = [Mappings = {[SourceColumnName = "A", DestinationColumnName = "A"]}], DynamicSchema = false, UpdateMethod = [Kind = "Replace"], TypeSettings = [Kind = "Table"]]]}, PreviewOnlySteps = {"SourceWhenPreview"}]
shared Query1 = let
  Source = #table({"A"},List.Transform({1..5},each Function.InvokeAfter(()=>{_},#duration(0,0,1,0))))
in
    Source;
shared Query1_DataDestination = let
  Pattern = Fabric.Warehouse([CreateNavigationProperties = false, HierarchicalNavigation = true]),
  Navigation_1 = Pattern{[workspaceId = "26ec5295-bece-4e10-b634-827be0e2588a"]}[Data],
  Navigation_2 = Navigation_1{[warehouseId = "d0569aed-2deb-4cc6-8780-756504dfa66f"]}[Data],
  Navigation_3 = Navigation_2{[Schema = "dbo"]}[Data],
  TableNavigation = Navigation_3{[Name = "demo"]}?[Data]?
in
  TableNavigation;
