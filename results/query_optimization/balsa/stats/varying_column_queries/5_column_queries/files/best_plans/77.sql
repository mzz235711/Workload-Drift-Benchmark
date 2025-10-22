/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND p.PostTypeId=2 AND p.CommentCount>=0 AND p.CreationDate>='2010-08-10 18:25:52'::timestamp AND p.CreationDate<='2014-09-07 14:43:13'::timestamp AND ph.CreationDate<='2014-08-28 20:00:22'::timestamp;

