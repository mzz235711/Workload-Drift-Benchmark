/*+ MergeJoin(c ph)
 SeqScan(c)
 IndexScan(ph)
 Leading((c ph)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate='2013-06-05 12:50:44'::timestamp AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2010-08-19 04:47:46'::timestamp;

