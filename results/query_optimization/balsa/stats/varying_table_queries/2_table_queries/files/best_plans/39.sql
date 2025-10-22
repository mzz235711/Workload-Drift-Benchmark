/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate<='2014-09-11 02:16:10'::timestamp AND p.PostTypeId=1 AND p.Score>=-4 AND p.ViewCount>=0 AND p.CreationDate>='2010-09-15 00:45:11'::timestamp AND p.CreationDate<='2014-09-06 21:29:15'::timestamp;

