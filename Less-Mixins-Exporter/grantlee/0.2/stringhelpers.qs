var chars = {
    "@"  : "-at-",
};

var CleanFilter = function(input)
{
  var input = input.rawString();
  return input.replace(/@/gi, function(matched){
    return chars[matched];
  });
};
CleanFilter.filterName = "clean";
CleanFilter.isSafe = false;
Library.addFilter("CleanFilter");