<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 MARRIOT HOTEL RESERVATIONS APP ](#-marriot-hotel-reservations-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [🚀 Live Demo ](#-live-demo-)
- [Before Starting the Project](#before-starting-the-project)
    - [Front End Kanban Board](#front-end-kanban-board)
    - [Back End Kanban Board](#back-end-kanban-board)
- [After Implementing the Project](#after-implementing-the-project)
    - [Front End Kanban Board](#front-end-kanban-board-1)
    - [Back End Kanban Board](#back-end-kanban-board-1)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Setup the Backend](#setup-the-backend)
    - [Setup the Frontend](#setup-the-frontend)
    - [Usage](#usage)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [Copyrights ](#copyrights-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 MARRIOT HOTEL RESERVATIONS APP <a name="about-project"></a>

**MARRIOT HOTEL RESERVATIONS APP** is an app that allows users to book a room in a marriot hotel. Users can see a list of available rooms, and can book a room for a specific date range. Users can also see their reservations and delete them.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Editor</summary>
  <ul>
    <li><a href="https://code.visualstudio.com/">VSCODE Editor</a></li>
  </ul>
</details>

<details>
  <summary>Backend</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Frontend</summary>
  <ul>
    <li><a href="https://reactjs.org/">React</a></li>
    <li><a href="https://vitejs.dev/guide/">VITE</a></li>
    React was deployed with VITE
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<details>
<summary>Authentication</summary>
  <ul>
    <li><a href="https://github.com/heartcombo/devise">Devise</a></li>
    <li><a href="https://github.com/waiting-for-dev/devise-jwt">JWT</a></li>
  </ul>
</details>

<details>
<summary>Testing</summary>
  <ul>
    <li><a href="https://github.com/rspec/rspec-rails">Rspec</a></li>
    <li><a href="https://vitest.dev/guide/">Vitest</a></li>
    <li><a href="https://testing-library.com/docs/react-testing-library/intro/">React Testing Library</a></li>
  </ul>
</details>

<details>
<summary>API Documentation</summary>
  <ul>
    <li><a href="https://github.com/rswag/rswag">Rswag</a></li>
  </ul>
</details></br>

### Key Features <a name="key-features"></a>
</br>

- **Users can register and log in**
- **Users must be logged-in to use the app**
- **Users can see a home page with the available rooms**
- **Users can book a room**
- **When the user selects a specific room, a details page with its full description is shown**
- **In the details page, the user can book a room with the "Reserve" button**
- **When the user clicks "Add Room" in the navigation panel, a form for adding a new room is displayed**
- **Users can see their reservations**
- **Users can delete a rooom**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🚀 Live Demo <a name="live-demo"></a>

- Coming soon

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- Kanban Board -->

**Kanban Board**

**We Used Kanban Board to organize our work and we are a group of 4 peoples**

# Before Starting the Project
### Front End Kanban Board


### Back End Kanban Board

# After Implementing the Project
### Front End Kanban Board


### Back End Kanban Board


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:

- A code editor of your preference, for example VSCODE or Atom
- Ruby 3.1.2
- Rails 7.0.4 or newer
- GIT
- YARN or - NPM
- PostgreSQL

### Setup

Clone this repositories to your desired folder:

    ## Backend
    git clone https://github.com/Miliyonayalew/Marriott-Reservation-Backend

    ## Frontend
    git clone https://github.com/OscarFMdev/Marriott-Reservation-Frontend

### Setup the Backend

    cd ./Marriott-Reservation-Backend

Install the gems and dependencies:

    bundle install

Make sure you can connect to postgresql and create the database:

    rails db:create
    rails db:migrate
    rails db:seed

    And delete the credential and master key inside the config folder
    then generate new one with the following command

    `EDITOR="code --wait" bin/rails credentials:edit`

    Then run the following command to start the server
    rails s

### Setup the Frontend

    cd ./Marriott-Reservation-Frontend

If the user doesn't have yarn, install it:

    npm install --global yarn

Install the gems and dependencies:

    yarn install

### Usage

To run the Backend, execute the following command:

    rails server

To run the Frontend, execute the following command:

    yarn dev

### Run tests

To run tests in the Backend, run the following command:

    rspec

To run tests in the Frontend, run the following command:

    yarn test

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

**Danys Linares**
- GitHub:[@githubhandle](https://github.com/d4nQw3rty) 
- Twitter:[@twitterhandle](https://twitter.com/Danys_Linares) 
- LinkedIn:[LinkedIn](https://www.linkedin.com/in/danys-linares/) 

**Oscar Fernandez**
- GitHub:[@githubhandle](https://github.com/OscarFMdev) 
- Twitter:[@twitterhandle](https://twitter.com/OscarFMdev) 
- LinkedIn:[LinkedIn](https://www.linkedin.com/in/OscarFMdev/) 

**Miliyon Ayalew**
- GitHub:[@githubhandle](https://github.com/Miliyonayalew/) 
- Twitter:[@twitterhandle](https://twitter.com/MilaAyalew) 
- LinkedIn:[LinkedIn](https://www.linkedin.com/in/miliyon-ayalew-210808131/) 

**Hans Zizold**
- GitHub:[@githubhandle](https://github.com/HansZizold) 
- Twitter:[@twitterhandle](https://twitter.com/hanzio27) 
- LinkedIn:[LinkedIn](https://www.linkedin.com/in/hans-paul-zizold-37129037/) 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Only admin users can add and delete rooms**
- [ ] **Add availability of rooms**
- [ ] **Add a search bar to search for rooms**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Miliyonayalew/Marriott-Reservation-Backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- My loving family 😊
- My partners from Microverse
- Inspiration, Dedication

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- COPYRIGHTS -->

## Copyrights <a name="copyrights"></a>

Original design idea by [Murat Korkmaz](https://www.behance.net/muratk), under [Creative Commons License](https://creativecommons.org/licenses/by-nc/4.0/).

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
