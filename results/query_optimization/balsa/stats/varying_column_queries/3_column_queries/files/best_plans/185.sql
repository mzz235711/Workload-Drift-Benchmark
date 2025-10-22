/*+ NestLoop(c p)
 SeqScan(c)
 IndexScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate='2013-10-16 15:16:18'::timestamp AND p.Score>=-6 AND p.Score<=47;

