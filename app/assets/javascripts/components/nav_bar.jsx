const Navbar = ReactBootstrap.Navbar,
      Nav = ReactBootstrap.Nav,
      NavItem = ReactBootstrap.NavItem;

const navbarInstance = (
  <Navbar bsStyle="inverse" fluid={true}>
    <Navbar.Header>
      <Navbar.Brand>
        <a href="#">React-Bootstrap</a>
      </Navbar.Brand>
    </Navbar.Header>
    <Nav>
      <NavItem eventKey={1} href="#">Link</NavItem>
      <NavItem eventKey={2} href="#">Link</NavItem>
    </Nav>
  </Navbar>
);

$(document).ready(function() {
  ReactDOM.render(navbarInstance, document.getElementById('nav'));
})
