/*+ HashJoin(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-07 22:25:17'::timestamp AND p.ViewCount<=2641 AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=8 AND p.CreationDate<='2014-08-13 09:20:10'::timestamp;

