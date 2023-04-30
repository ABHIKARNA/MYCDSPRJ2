namespace dealerportal.customer;



entity OffersAndSchemes {
    key ID                      : UUID;
        typeofofferandscheme    : TypeOfferAndScheme;
        offersschemedescription : String(1000);
        subject                 : String(200);
        notification            : Association to NotificationsMedia;
        testmany                : Association to many TestManies
                                      on testmany.offer = $self;
        customer                : Association to many Custumers_Offers
                                      on customer.offer = $self;
}

entity Customers {
    key ID       : UUID;
        code     : String;
        name     : String;
        email    : String;
        address  : String;
        branch   : String;
        region   : String;
        district : String;
        zone     : String;
        offer    : Association to many Custumers_Offers
                       on offer.customer = $self;
}

entity Custumers_Offers {
    customer : Association to Customers;
    offer    : Association to OffersAndSchemes;
}

entity BroadcastOffersAndSchemes {
    key ID                      : UUID;
        typeofofferandscheme    : TypeOfferAndScheme;
        Offersschemedescription : String;
        subject                 : String;
        branch                  : String;
        region                  : String;
        district                : String;
        zone                    : String;

}

entity TestManies {
    key ID        : UUID;
        somefield : String;
        offer     : Association to OffersAndSchemes;
}

entity NotificationsMedia {
    key ID    : UUID;
        email : String;
        image : LargeBinary @Core.MediaType;
}

type TypeOfferAndScheme : String enum {
    ProductInformation        = 'Product Information';
    NewAnnouncement           = 'New Announcement';
    SalesPromotions           = 'Sales Promotions';
    NewProductFeaturesSchemes = 'New Product Features Schemes';
    Notifications             = 'Notifications';
}
