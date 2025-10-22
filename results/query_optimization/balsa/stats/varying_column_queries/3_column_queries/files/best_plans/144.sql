/*+ MergeJoin(b u)
 IndexScan(b)
 SeqScan(u)
 Leading((b u)) */
SELECT COUNT(*) FROM badges as b, users as u WHERE b.UserId= u.Id AND b.Date>='2010-09-20 03:59:15'::timestamp AND b.Date<='2014-09-11 01:28:43'::timestamp AND u.Reputation=414;

