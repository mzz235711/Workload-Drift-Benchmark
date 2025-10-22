/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.AnswerCount<=2 AND p.FavoriteCount<=14 AND ph.CreationDate>='2010-11-04 03:08:14'::timestamp AND ph.CreationDate<='2014-08-21 07:16:17'::timestamp;

