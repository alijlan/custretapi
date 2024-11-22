using { custretapi } from '../db/custret-schema.cds';

service CustomerReturnService {
    @readonly entity CustomerReturn as projection on custretapi.CustomerReturn;
}
