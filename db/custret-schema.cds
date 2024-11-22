namespace custretapi;

using { sap_s4_CE_CUSTOMERRETURN_0001_v1 as cret } from '../srv/external/sap-s4-CE_CUSTOMERRETURN_0001-v1.csn';

entity CustomerReturn as projection on cret.CustomerReturn;
