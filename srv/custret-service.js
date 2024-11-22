const cds = require('@sap/cds');

module.exports = cds.service.impl( async function() {
    const CRet = await cds.connect.to("sap_s4_CE_CUSTOMERRETURN_0001_v1");
    this.on("READ","CustomerReturn", async(req) => {
        req.query.where("CustomerReturn <> '' ");
        return await CRet.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey
            }
        })
    })
})