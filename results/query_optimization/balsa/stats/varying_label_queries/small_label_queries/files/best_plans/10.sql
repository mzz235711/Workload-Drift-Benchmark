/*+ NestLoop(p c ph)
 NestLoop(p c)
 SeqScan(p)
 IndexScan(c)
 IndexScan(ph)
 Leading(((p c) ph)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate>='2010-07-24 08:44:37'::timestamp AND c.CreationDate<='2014-09-12 18:46:24'::timestamp AND p.ViewCount=45 AND p.CommentCount<=10 AND p.CreationDate>='2010-10-13 14:22:54'::timestamp;

