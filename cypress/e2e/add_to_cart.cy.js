

describe("Add to cart", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("adds an item to the cart", () => {
    //clicks 'add to cart' button for first product
    cy.get(".products article").first().find("form button").click({force:true});

    //checks to ensure cart count increases
    cy.contains("My Cart (1)").should("be.visible");
  });
});