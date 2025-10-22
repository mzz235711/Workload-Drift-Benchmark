/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 IndexScan(c)
 IndexScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.Score=0 AND p.CommentCount<=13 AND p.CreationDate>='2010-09-01 16:01:33'::timestamp AND p.CreationDate<='2014-09-08 20:16:09'::timestamp;

