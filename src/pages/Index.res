module P = {
  @react.component
  let make = (~children) => <p className="mb-2"> children </p>
}

// For development, run these in separate terminals:
// npm run res:start
// npm run dev

// https://nextjs.org/learn/basics/create-nextjs-app/setup

let default = () =>
  <div className="relative flex justify-end w-full mt-16">
    <div className="absolute top-10 sm:top-20 left-0 w-full md:w-max-80">
      // border border-gray-200
      <h1 className="text-xl w-40 sm:text-2xl sm:w-56 md:text-4xl md:w-66 font-bold"> {"Let's Level Up with Functional Programming"->React.string} </h1>
    </div>
    // TODO: Adjust w-172 to be responsive (this width is directly affecting the triangle-unit svg size)
    <div className="relative min-w-48 w-full z-0 sm:w-172 h-full neg-pt-1"> // border-solid border-2 border-blue
      <img className="absolute z-0 object-cover neg-top-16 left-8 sm:neg-top-32 sm:left-16" src="/static/triangle-unit.svg" />
    </div>
  </div>
