// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import Head from "next/head";
import Link from "next/link";

function MainLayout$Navigation(Props) {
  return React.createElement(React.Fragment, undefined, React.createElement(Head, {
                  children: React.createElement("link", {
                        href: "https://unpkg.com/prism-themes@1.9.0/themes/prism-holi-theme.min.css",
                        rel: "stylesheet"
                      })
                }), React.createElement("nav", {
                  className: "relative z-10 p-2 pt-8 h-12 flex justify-between items-center text-sm"
                }, React.createElement(Link, {
                      href: "/",
                      children: React.createElement("span", {
                            className: "text-2xl font-semibold"
                          }, "Technically Functional")
                    }), React.createElement("div", {
                      className: "flex w-40 justify-between text-lg font-normal"
                    }, React.createElement(Link, {
                          href: "/",
                          children: "Home"
                        }), React.createElement(Link, {
                          href: "/about",
                          children: "About"
                        }), React.createElement(Link, {
                          href: "/blog",
                          children: "Blog"
                        }))));
}

function MainLayout(Props) {
  var children = Props.children;
  var minWidth = {
    minWidth: "20rem"
  };
  return React.createElement("div", {
              className: "flex lg:justify-center",
              style: minWidth
            }, React.createElement("div", {
                  className: "max-w-5xl w-192 lg:w-3/4 text-gray-900 font-base"
                }, React.createElement(MainLayout$Navigation, {}), React.createElement("main", {
                      className: "mt-4 mx-4"
                    }, children)));
}

var make = MainLayout;

export {
  make ,
  
}
/* react Not a pure module */
