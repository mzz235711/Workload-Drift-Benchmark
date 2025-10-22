/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND p.Score<=30 AND p.CreationDate>='2010-10-19 06:50:40'::timestamp AND p.CreationDate<='2014-09-04 01:57:15'::timestamp;

