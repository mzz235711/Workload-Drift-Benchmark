/*+ HashJoin(ph c)
 SeqScan(ph)
 IndexScan(c)
 Leading((ph c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph WHERE c.UserId = ph.UserId AND c.Score=0 AND c.CreationDate>='2010-07-19 19:58:20'::timestamp AND ph.CreationDate>='2011-09-07 03:44:56'::timestamp;

