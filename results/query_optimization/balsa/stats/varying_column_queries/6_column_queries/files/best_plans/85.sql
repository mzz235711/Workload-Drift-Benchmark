/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-23 17:42:07'::timestamp AND c.CreationDate<='2014-08-28 17:32:18'::timestamp AND p.AnswerCount>=0 AND p.AnswerCount<=21 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-21 15:38:46'::timestamp;

