/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=1 AND c.CreationDate<='2014-09-10 21:20:22'::timestamp AND p.CreationDate<='2014-08-28 16:39:27'::timestamp;

