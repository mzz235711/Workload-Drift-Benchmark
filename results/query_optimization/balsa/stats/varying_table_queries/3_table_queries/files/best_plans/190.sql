/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND p.CreationDate<='2014-09-04 20:47:08'::timestamp;

