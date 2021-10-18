* {
  margin: 0;
  padding: 0;
}
body {
  font-family: "Montserrat", sans-serif;
  overflow-x: hidden;
}

/* nav bar */
nav {
  display: flex;
  background-color: rgb(76, 103, 184);
  justify-content: space-around;
  padding: 20px 0;
  color: rgb(197, 208, 243);
}
nav ul {
  display: flex;
  list-style: none;
  width: 40%;
  justify-content: space-between;
}
nav ul li a {
  color: rgb(197, 208, 243);
  text-decoration: none;
  font-size: 0.8em;
}
nav ul li a:hover {
  color: rgb(240, 242, 250);
}

/* hunburger menu */
.menu-toggle {
  display: none;
  flex-direction: column;
  height: 20px;
  justify-content: space-between;
  position: relative;
}
.menu-toggle input {
  position: absolute;
  width: 40px;
  height: 28px;
  left: -6px;
  top: -3px;
  opacity: 0;
  cursor: pointer;
  z-index: 2;
}
.menu-toggle span {
  display: block;
  width: 28px;
  height: 3px;
  background-color: rgb(197, 208, 243);
  border-radius: 3px;
  transition: all 0.5s;
}
/* hunburger menu animation */
.menu-toggle span:nth-child(2) {
  transform-origin: 0 0;
}
.menu-toggle span:nth-child(4) {
  transform-origin: 0 100%;
}
.menu-toggle input:checked ~ span:nth-child(2) {
  transform: rotate(45deg) translate(-1px, -1px);
  background-color: white;
}
.menu-toggle input:checked ~ span:nth-child(4) {
  transform: rotate(-45deg) translate(-1px, 0);
  background-color: white;
}
.menu-toggle input:checked ~ span:nth-child(3) {
  transform: scale(0);
}

/* Responsive */
/* untuk ukuran tablet */
@media screen and (max-width: 768px) {
  nav ul {
    width: 50%;
  }
}
/* ukuran mobile */
@media screen and (max-width: 576px) {
  .menu-toggle {
    display: flex;
  }
  nav ul {
    position: absolute;
    right: 0;
    top: 0;
    width: 80%;
    height: 100vh;
    justify-content: space-evenly;
    flex-direction: column;
    align-items: center;
    background-color: rgb(76, 103, 184);
    z-index: -1;
    transform: translateX(100%);
    transition: all 1s;
  }
  nav ul.slide {
    transform: translateX(0);
  }
}

.jumbotron {
  padding-top: 6rem;
  background-color: #e2edff;
  color: darkblue;
  font-family: "Oswald", sans-serif;
}

#project {
  background-color: #e2edff;
}

section {
  padding-top: 5rem;
}

.table1 {
  font-family: sans-serif;
  color: #444;
  border-collapse: collapse;
  width: 50%;
  border: 1px solid #f2f5f7;
}

.table1 tr th {
  background: #35a9db;
  color: #fff;
  font-weight: normal;
}

.table1,
th,
td {
  padding: 8px 20px;
  text-align: left;
}

.table1 tr:hover {
  background-color: #f5f5f5;
}
.table1 tr:nth-child(even) {
  background-color: #f2f2f2;
}
.judul {
  font-family: "Oswald", sans-serif;
}
.des {
  font-family: "Pacifico", cursive;
}
/* Back to Top Pure CSS by igniel.com */
html {
  scroll-behavior: smooth;
}
/* go top */
.ignielToTop {
  width: 50px;
  height: 50px;
  position: fixed;
  bottom: 50px;
  left: 50px;
  z-index: 99;
  cursor: pointer;
  border-radius: 100px;
  transition: all 0.5s;
  background: #008c5f url("data:image/svg+xml,%3Csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M7.41,15.41L12,10.83L16.59,15.41L18,14L12,8L6,14L7.41,15.41Z' fill='%23fff'/%3E%3C/svg%3E") no-repeat center center;
}
/* go top */
.ignielToTop:hover {
  background: hsl(0, 80%, 37%) url("data:image/svg+xml,%3Csvg viewBox='0 0 24 24' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath d='M7.41,15.41L12,10.83L16.59,15.41L18,14L12,8L6,14L7.41,15.41Z' fill='%23fff'/%3E%3C/svg%3E") no-repeat center
    center;
}
/* WA */
