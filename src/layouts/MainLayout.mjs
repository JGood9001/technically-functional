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
                  className: "relative w-full z-10 pt-8 h-12 flex justify-between align-top"
                }, React.createElement(Link, {
                      href: "/",
                      children: React.createElement("div", {
                            className: "flex flex-col"
                          }, React.createElement("span", {
                                className: "text-lg sm:text-xl md:text-2xl font-semibold border-b-4 border-brand"
                              }, "Technically"), React.createElement("span", {
                                className: "text-lg sm:text-xl md:text-2xl font-semibold border-b-4 border-brand"
                              }, "Functional"))
                    }), React.createElement("div", {
                      className: "flex gap-4 md:gap-12 justify-between sm:text-md md:text-lg font-normal"
                    }, React.createElement(Link, {
                          href: "/",
                          children: React.createElement("span", {
                                className: "hover:border-b-4 hover:border-brand"
                              }, "Home")
                        }), React.createElement(Link, {
                          href: "/about",
                          children: React.createElement("span", {
                                className: "hover:border-b-4 hover:border-brand"
                              }, "About")
                        }), React.createElement(Link, {
                          href: "/blog",
                          children: React.createElement("span", {
                                className: "hover:border-b-4 hover:border-brand"
                              }, "Blog")
                        }))));
}

function MainLayout(Props) {
  var children = Props.children;
  return React.createElement("div", {
              className: "relative flex pl-8 pr-8 sm:pl-20 sm:pr-20 justify-center"
            }, React.createElement("div", {
                  className: "w-full h-screen md:max-w-192 text-dark font-base"
                }, React.createElement(MainLayout$Navigation, {}), React.createElement("main", {
                      className: "mt-16 border"
                    }, children)));
}

var make = MainLayout;

export {
  make ,
  
}
/* react Not a pure module */
