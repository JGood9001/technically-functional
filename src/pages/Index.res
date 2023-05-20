module P = {
  @react.component
  let make = (~children) => <p className="mb-2"> children </p>
}

// For development, run these in separate terminals:
// npm run res:start
// npm run dev

// https://nextjs.org/learn/basics/create-nextjs-app/setup

let default = () =>
  <div className="flex">
    <div>
      <h1 className="text-3xl font-bold"> {"Let's Level Up with Functional Programming"->React.string} </h1>
    </div>
    <div className="relative z-0 w-192 h-full border-solid border-2 border-blue neg-pt-1">
      <img className="absolute z-0 neg-top-16 left-16 border-2 border-solid border-blue" src="/static/triangle-unit.svg" />
    </div>
  </div>
