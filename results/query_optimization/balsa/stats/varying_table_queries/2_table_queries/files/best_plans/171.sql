/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-11 09:34:05'::timestamp AND p.Score=1 AND p.AnswerCount=0 AND p.FavoriteCount>=0;

