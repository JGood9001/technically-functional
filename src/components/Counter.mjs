// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";

function $$default(props) {
  var match = React.useState(function () {
        return 0;
      });
  var setCount = match[1];
  var onClick = function (_evt) {
    return Curry._1(setCount, (function (prev) {
                  return prev + 1 | 0;
                }));
  };
  var msg = "You clicked" + String(match[0]) + "times";
  return React.createElement("div", undefined, React.createElement("p", undefined, msg), React.createElement("button", {
                  onClick: onClick
                }, "Click me"));
}

export {
  $$default ,
  $$default as default,
  
}
/* react Not a pure module */