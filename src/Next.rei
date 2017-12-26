module Link: {
  [@bs.module "next/link"] external link : ReasonReact.reactClass = "default";
  let make:
    (
      ~href: 'a=?,
      ~_as: 'b=?,
      ~prefetch: Js.boolean=?,
      ~replace: Js.boolean=?,
      ~shallow: Js.boolean=?,
      ~passHref: Js.boolean=?,
      array(ReasonReact.reactElement)
    ) =>
    ReasonReact.component(
      ReasonReact.stateless,
      ReasonReact.noRetainedProps,
      ReasonReact.actionless
    );
};

module Head: {
  [@bs.module "next/head"] external head : ReasonReact.reactClass = "default";
  let make:
    array(ReasonReact.reactElement) =>
    ReasonReact.component(
      ReasonReact.stateless,
      ReasonReact.noRetainedProps,
      ReasonReact.actionless
    );
};

module Error: {
  [@bs.module "next/error"]
  external error : ReasonReact.reactClass = "default";
  let make:
    (~statusCode: int, array(ReasonReact.reactElement)) =>
    ReasonReact.component(
      ReasonReact.stateless,
      ReasonReact.noRetainedProps,
      ReasonReact.actionless
    );
};