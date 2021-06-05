\set r1 random(1, 10)
\set r2 random(1, 100)
\set r3 random(1, 1000)
\set r4 random(1, 10000)
\set r5 random(1, 100000)
\set r6 random(1, 1000000)

\set year1 random(1990, 2020)
\set month1 random(1, 12)
\set day1 random(1, 29)

\set hour1 random(1, 23)

\set year2 random(1990, 2020)
\set month2 random(1, 12)
\set day2 random(1, 29)

\set year3 random(1990, 2020)
\set month3 random(1, 12)
\set day3 random(1, 29)

\set id random(1, 10000000000)

SET search_path TO fluentretail,public;

BEGIN;
INSERT INTO fluentretail.event (id, event_context, event_status, created_on, created_by, updated_on, updated_by)  VALUES (':r6-:r5-:r4-:r3-:r2', '{"id": ":r6-:r5-:r4-:r3-:r2", "meta": {"type": "NORMAL", "errorLogs": [], "trailLogs": [], "scheduledOn": ":year1-:month1-13T22:00:00.000Z"}, "name": "FulfilmentExpiry:r1", "type": "ORCHESTRATION:r1", "source": "Fluent-API:r1", "context": {"entityId": ":r6", "entityRef": ":r6", "entityType": "FULFILMENT:r1", "rootEntityId": ":r6", "sourceEvents": [], "rootEntityRef": ":r6", "rootEntityType": "ORDER:r1"}, "category": "ORDER WORKFLOW:r1", "accountId": "HB:r1", "attributes": [], "recordedBy": "Rubix User :r1", "recordedOn": "2:r3-:r1-18T:r1:05:18.151+0000", "retailerId": ":r1", "eventStatus": null, "generatedBy": "Rubix User", "generatedOn": ":year2-:month2-2T:r1:05:18.155+0000"}'
, 'PENDING', '20:r2-:r1-:r1 :r1:00:13.:r2', 'Event_API', '20:r2-:r1-:r1 :r1:00:13.:r2', 'Event_API');

COMMIT;
BEGIN;
update event set event_context='{"id": ":r6-:r5-:r4-:r3-:r2", "meta": {"type": "NORMAL", "errorLogs": [], "trailLogs": [], "scheduledOn": "20:r2-06-30T22:00:00.000Z"}, "name": "FulfilmentExpiry:r1", "type": "ORCHESTRATION:r1", "source": "Fluent-API:r1", "context": {"entityId": ":r6", "entityRef": ":r6", "entityType": "FULFILMENT:r1", "rootEntityId": ":r6", "sourceEvents": [], "rootEntityRef": ":r6", "rootEntityType": "ORDER:r1"}, "category": "ORDER WORKFLOW:r1", "accountId": "FOO:r1", "attributes": [], "recordedBy": "Rubix User :r1", "recordedOn": "2:r3-:r1-18T:r1:05:18.158+0000", "retailerId": ":r1", "eventStatus": null, "generatedBy": "Rubix User", "generatedOn": ":year3-:month3-07T:r1:05:18.159+0000"}', event_status='COMPLETE' where id=':r6-:r5-:r4-:r3-:r2';
COMMIT;
