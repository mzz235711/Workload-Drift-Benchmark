/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate>='2010-07-21 08:45:38'::timestamp AND c.CreationDate<='2014-09-10 20:26:02'::timestamp;

