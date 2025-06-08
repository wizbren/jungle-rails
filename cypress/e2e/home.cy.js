

/* basic home page test */
describe("Home Page", () => {
  it("should visit the home page", () => {
    cy.visit("/");
  });

  /* test to confirm 2 products show up on page */
  it("There is 2 products on the page", () => {
    cy.visit("/");
    cy.get(".products article").should("have.length", 2);
  });
});