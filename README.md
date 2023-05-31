<a name="readme-top"></a>

<div align="center">
<h3><b>Daisy Budget App</b></h3>
</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    <!-- - [🚀 Live Demo](#live-demo) -->
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

# 📖 Daisy Budget App <a name="about-project"></a>

Daisy Budget App is an app that helps you to manage your budget. You can create your category and transactions. You can also see your budget report.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby on Rails
- Slim template engine
- DaisyUI(Taildwind CSS framework)

### Key Features <a name="key-features"></a>

- **CRUD Operations**
- **Authentication**
- **Authorization**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### 🚀 Live Demo

- [Live Demo Link](https://budget-app-zngj.onrender.com/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need: `Ruby` and `Node.js` installed on your machine.

### Setup

Clone the repo and open terminal in the project root directory


### Install

1. <span style="color: red;">*Important*</span> Install Daisy UI first by running the following command:

```sh
npm install
```
> Note: Prefer `pnpm` over `npm` if you use `pnpm` as your package manager.

2. Install `Ruby` dependencies by running the following command: <span style="color: red;">*Important*</span> You need to install `Daisy UI` first before installing `Ruby` dependencies.

```sh
bundle install
```

3. And Create `.env` file in the root directory add the configurations. You can use the `.env.example` file as a template.

4. Create database and run migrations by running the following commands:

```sh
bundle exec rails db:create
bundle exec rails db:migrate
```

#### For development
> <span style="color: red;">You should build or watch the css before running the project.</span>

To build css, execute the following command:

```sh
bundle exec rails tailwindcss:build
```

To watch css, execute the following command:

```sh
bundle exec rails tailwindcss:watch
```
> These will convert the `tailwindcss` to `css`.

### Usage

To run the project, execute the following command:

```sh
bundle exec rails s
```

### Tests

To run the tests, execute the following command:

```sh
bundle exec rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

**Wai Yan Phyo**

- Github: [@oyhpnayiaw](https://github.com/oyhpnayiaw)
- Twitter: [@oyhpnayiaw](https://twitter.com/oyhpnayiaw)
- LinkedIn: [@oyhpnayiaw](https://linkedin.com/in/oyhpnayiaw)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add search**

- [ ] **User profile**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project or find it useful, please consider giving it a ⭐️. Thanks!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Original Design Link - [SnapScan-IOS](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=)

Design by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
