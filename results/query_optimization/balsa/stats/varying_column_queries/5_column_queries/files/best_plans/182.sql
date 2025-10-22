/*+ HashJoin(c ph p)
 HashJoin(ph p)
 SeqScan(c)
 IndexScan(ph)
 SeqScan(p)
 Leading((c (ph p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.Score=0 AND p.ViewCount<=1851 AND p.CommentCount<=12 AND p.CreationDate>='2010-10-01 03:25:35'::timestamp AND ph.CreationDate='2013-11-03 22:20:23'::timestamp;

