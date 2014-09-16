var RemoveHighdensityFilter = function(input)
{
  var input = input.rawString();
  return input.replace(/@2x/gi, function(matched){
    return '';
  });
};
RemoveHighdensityFilter.filterName = "removehighdensity";
RemoveHighdensityFilter.isSafe = false;
Library.addFilter("RemoveHighdensityFilter");

var IsHighdensity = function(input)
{
  var input = input.rawString();
  return new RegExp(/@2x/gi).test(input) ? "true" : "";
};
IsHighdensity.filterName = "ishighdensity";
IsHighdensity.isSafe = false;
Library.addFilter("IsHighdensity");