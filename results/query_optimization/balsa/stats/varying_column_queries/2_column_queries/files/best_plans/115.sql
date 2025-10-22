/*+ HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.CreationDate='2011-03-17 16:53:48'::timestamp AND ph.PostHistoryTypeId=2;

