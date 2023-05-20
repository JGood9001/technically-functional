module P = {
  @react.component
  let make = (~children) => <p className="mb-2"> children </p>
}

// For development, run these in separate terminals:
// npm run res:start
// npm run dev

// https://nextjs.org/learn/basics/create-nextjs-app/setup

let default = () =>
  <div className="relative flex justify-end mt-8">
    <div className="absolute left-0 w-max-80 w-80">
      // border border-gray-200
      <h1 className="text-5xl font-bold"> {"Let's Level Up with Functional Programming"->React.string} </h1>
    </div>
    // TODO: Adjust w-172 to be responsive (this width is directly affecting the triangle-unit svg size)
    <div className="relative z-0 w-172 h-full neg-pt-1"> // border-solid border-2 border-blue
      <img className="absolute z-0 neg-top-32 left-16" src="/static/triangle-unit.svg" />
    </div>
  </div>
