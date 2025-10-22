/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND c.CreationDate<='2014-09-12 01:51:44'::timestamp AND p.Score>=-1 AND p.CommentCount>=0 AND p.CreationDate<='2014-09-05 08:42:14'::timestamp;

