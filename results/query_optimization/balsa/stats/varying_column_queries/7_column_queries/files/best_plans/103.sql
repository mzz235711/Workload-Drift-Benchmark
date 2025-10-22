/*+ HashJoin(ph u c p pl)
 MergeJoin(u c p pl)
 HashJoin(c p pl)
 HashJoin(p pl)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(pl)
 Leading((ph (u (c (p pl))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, postHistory as ph, users as u WHERE p.Id = pl.RelatedPostId AND pl.RelatedPostId = c.PostId AND pl.RelatedPostId = ph.PostId AND u.Id= c.UserId AND c.Score=0 AND p.Score<=16 AND p.CommentCount<=11 AND p.CreationDate>='2010-07-20 09:30:18'::timestamp AND u.Reputation<=231 AND u.CreationDate>='2011-10-23 07:43:58'::timestamp AND u.CreationDate<='2014-08-27 03:12:43'::timestamp;

