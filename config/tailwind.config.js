const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
    require("@tailwindcss/container-queries"),
    require("daisyui"),
  ],
  daisyui: {
    styled: true,
    base: true,
    utils: true,
    themes: [
      {
        mytheme: {
          primary: "#3778c3",
          secondary: "#5fb523",
          accent: "#dd06cf",
          neutral: "#232130",
          "base-100": "#F7F7F7",
          info: "#5BA8D7",
          success: "#118856",
          warning: "#AA6C09",
          error: "#EB335E",
        },
      },
    ],
  },
};
