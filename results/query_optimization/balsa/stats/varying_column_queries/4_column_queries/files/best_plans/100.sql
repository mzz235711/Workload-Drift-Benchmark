/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate>='2010-07-19 19:51:06'::timestamp AND p.Score=1 AND p.ViewCount<=7716;

