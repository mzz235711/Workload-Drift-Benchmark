/*+ HashJoin(c b u p pl)
 HashJoin(b u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(c)
 SeqScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((c (b (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-28 18:44:11'::timestamp AND c.CreationDate<='2014-09-09 08:07:07'::timestamp AND pl.LinkTypeId=1 AND p.CommentCount>=0 AND u.Reputation>=1 AND u.CreationDate>='2010-07-20 11:19:08'::timestamp AND u.CreationDate<='2014-09-09 05:53:58'::timestamp;

