let default = () =>
  <div className="mt-24">
    <p className="text-md md:text-xl mb-6">
      {React.string("A blog where I'll infrequently post about a general concept and some possible applications.")}
    </p>
    <div className="prose max-w-none mb-6">
      <pre className="language-hs">
        <code className="language-hs">
          <span className="token keyword">{React.string("my_language_journey ")}</span>
          <span className="token operator">{React.string(":: \n")}</span>
          <span className="token class-name">{React.string("JavaScript ")}</span>
          <span className="token operator">{React.string("\n-> ")}</span>
          <span className="token class-name">{React.string("Elixir ")}</span>
          <span className="token operator">{React.string("\n-> ")}</span>

          <span className="token operator">{React.string("(")}</span>
          <span className="token class-name">{React.string("Julia")}</span>
          <span className="token operator">{React.string(", ")}</span>
          <span className="token class-name">{React.string("Crystal")}</span>
          <span className="token operator">{React.string(", ")}</span>
          <span className="token class-name">{React.string("Rust")}</span>
          <span className="token operator">{React.string(") ")}</span>
          <span className="token operator">{React.string("\n-> ")}</span>

          <span className="token operator">{React.string("(")}</span>
          <span className="token class-name">{React.string("ReScript")}</span>
          <span className="token operator">{React.string(", ")}</span>
          <span className="token class-name">{React.string("PureScript")}</span>
          <span className="token operator">{React.string(", ")}</span>
          <span className="token class-name">{React.string("Haskell")}</span>
          <span className="token operator">{React.string(")")}</span>
        </code>
      </pre>
    </div>
    <p className="text-md md:text-xl">
      {React.string(`And my personal favorite quote regarding programming:`)}
    </p>
    <div className="prose">
      <blockquote>
      {React.string(`”Life is too short for imperative programming” John Hughes`)}
        
      </blockquote>
    </div>
  </div>
