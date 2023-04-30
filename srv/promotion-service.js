
module.exports = srv => {

  srv.on("getDate", () => {
    return "2023-04-09";
  })

  // srv.before("CREATE", "OffersAndSchemes", async req => {
  //   const { typeofofferandscheme, subject } = req.data;
  //   if (!typeofofferandscheme || !subject) {
  //     throw new Error("Fields are required");
  //   }
  // });


};