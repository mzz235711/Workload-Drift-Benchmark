/*+ HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.CreationDate>='2009-02-02 14:21:12'::timestamp AND p.CreationDate<='2014-09-10 15:21:57'::timestamp AND u.CreationDate<='2014-08-15 05:17:41'::timestamp;

