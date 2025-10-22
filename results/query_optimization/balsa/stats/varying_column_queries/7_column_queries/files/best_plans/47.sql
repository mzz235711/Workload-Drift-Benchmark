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
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.Score>=-1 AND p.CommentCount>=0 AND p.CommentCount<=35 AND p.CreationDate>='2010-11-15 11:16:20'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=910 AND u.CreationDate>='2010-07-19 19:27:18'::timestamp;

