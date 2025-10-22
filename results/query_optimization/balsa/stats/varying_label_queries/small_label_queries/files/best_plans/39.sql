/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score>=-8 AND p.Score<=49 AND p.ViewCount<=2143 AND p.CreationDate>='2010-08-07 22:57:34'::timestamp AND p.CreationDate<='2014-08-19 16:40:30'::timestamp;

