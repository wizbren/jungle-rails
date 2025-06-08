

describe("Product Details", () => {
  beforeEach(() => {
    cy.visit("/");
  });

  it("should navigate to product detail page when a product is clicked", () => {
    
    //clicks first product link
    cy.get(".products article").first().find("a").click();

    //makes sure product-detail container is visible
    cy.get(".product-detail").should("be.visible");
  });
});