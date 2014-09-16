var pseudoObj = {
    "-active"  : ":active",
    "-focus"   : ":focus",
    "-hover"   : ":hover",
    "-visited" : ":visited",
    "-checked" : ":checked",
    "-disabled": ":disabled"
};

var MakePseudoCSSSelectorFilter = function(input)
{
  var input = input.rawString();
  return input.replace(/-active|-focus|-hover|-visited|-checked|-disabled/gi, function(matched){
    return pseudoObj[matched];
  });
};
MakePseudoCSSSelectorFilter.filterName = "makepseudocssselector";
MakePseudoCSSSelectorFilter.isSafe = false;
Library.addFilter("MakePseudoCSSSelectorFilter");

var HasPseudoCSSSelector = function(input)
{
  var input = input.rawString();
  return new RegExp(/-active|-focus|-hover|-visited|-checked|-disabled/gi).test(input) ? "true" : "";
};
HasPseudoCSSSelector.filterName = "haspseudocssselector";
HasPseudoCSSSelector.isSafe = false;
Library.addFilter("HasPseudoCSSSelector");