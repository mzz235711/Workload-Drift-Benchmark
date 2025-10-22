/*+ NestLoop(c p pl u)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 IndexScan(u)
 Leading(((c (p pl)) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=1 AND c.CreationDate>='2010-08-16 11:45:12'::timestamp AND c.CreationDate<='2014-09-11 04:24:44'::timestamp AND p.PostTypeId=1 AND p.Score>=-6 AND p.CommentCount<=9 AND pl.CreationDate<='2014-08-13 15:13:20'::timestamp;

