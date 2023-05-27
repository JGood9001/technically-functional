module.exports = {
  purge: {
    // Specify the paths to all of the template files in your project
    content: [
      './src/components/**/*.res',
      './src/layouts/**/*.res',
      './src/**/*.res',
    ],
    options: {
      safelist: ["html", "body"],
    }
  },
  // important: true,
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        'brand': '#04FFFF',
        'dark': '#264c68',
        'light': '#ECECFA',
        'light-gray': '#E6E6E6'
      },
      height: {
        148: "32rem",
        172: "40rem",
        192: "48rem",
      },
      width: {
        148: "32rem",
        172: "40rem",
        192: "48rem",
      },
      minWidth: {
        48: "12rem",
        56: "14rem",
      },
      maxWidth: {
        96: "24rem",
        192: "48rem",
      },
      typography: {
        DEFAULT: {
          css: {
            h1: {
              "margin-top": "7rem",
              "margin-bottom": "-1rem",
              "font-size": "2rem",
            },
            p: {
              "display": "inline-block",
              "font-size": "1.1rem",
            }
          },
        }
      },
    },
    /* Most of the time we customize the font-sizes,
     so we added the Tailwind default values here for
     convenience */
    // height: {
    //   32: "8rem",
    //   34: "8.5rem",
    //   36: "9rem",
    //   40: "10rem",
    //   44: "11rem",
    //   48: "12rem",
    //   52: "13rem",

    //   56: "14rem",
    //   60: "15rem",
    //   64: "16rem",
    //   72: "18rem",
    //   80: "20rem",
    //   96: "24rem",
    //   148: "32rem",
    //   172: "40rem",
    //   192: "48rem",
    //   // full: "100%"
    // },
    // width: {
    //   32: "8rem",
    //   34: "8.5rem",
    //   36: "9rem",
    //   40: "10rem",
    //   44: "11rem",
    //   48: "12rem",
    //   52: "13rem",
    //   56: "14rem",
    //   60: "15rem",
    //   64: "16rem",
    //   72: "18rem",
    //   80: "20rem",
    //   96: "24rem",
    //   148: "32rem",
    //   172: "40rem",
    //   192: "48rem",
    //   // full: "100%"
    // },
    fontSize: {
      xs: ".75rem",
      sm: ".875rem",
      base: "1rem",
      lg: "1.125rem",
      xl: "1.25rem",
      '2xl': "1.5rem",
      '3xl': "1.875rem",
      '4xl': "2.25rem",
      '5xl': "3rem",
      '6xl': "4rem"
    },
    colors: {
      // 'dark': '#526F84',

      // rando
      'white': '#f6f6f6',
      'blue': '#1fb6ff',
      'purple': '#7e5bef',
      'pink': '#ff49db',
      'orange': '#ff7849',
      'green': '#13ce66',
      'yellow': '#ffc82c',
      'gray-dark': '#273444',
      'gray': '#8492a6',
      'gray-light': '#d3dce6',
    },
    /* We override the default font-families with our own default prefs  */
    fontFamily: {
      'sans':['-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'serif': ['Georgia', '-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'], 
      'mono': [ 'Menlo', 'Monaco', 'Consolas', 'Roboto Mono', 'SFMono-Regular', 'Segoe UI', 'Courier', 'monospace']
    },
  },
  variants: {
    width: ['responsive']
  },
  plugins: [
    require('@tailwindcss/typography'),
  ]
}
