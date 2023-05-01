using {dealerportal.customer} from '../db/OffersAndScheme';


service PromotionService {

   entity OffersAndSchemes @(odata.draft.enabled: true) as projection on customer.OffersAndSchemes;
   entity Customers                                     as projection on customer.Customers;
   entity TestManies                                    as projection on customer.TestManies;
   entity BroadcastOffersAndSchemes                     as projection on customer.BroadcastOffersAndSchemes;
   entity NotificationsMedia                            as projection on customer.NotificationsMedia;
   function getDate() returns Date;


}
