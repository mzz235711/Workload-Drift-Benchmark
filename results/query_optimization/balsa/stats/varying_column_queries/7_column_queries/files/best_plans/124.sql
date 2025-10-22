/*+ HashJoin(b c u p pl)
 MergeJoin(c u p pl)
 MergeJoin(u p pl)
 MergeJoin(p pl)
 SeqScan(b)
 IndexScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.PostTypeId=1 AND p.CommentCount>=0 AND u.Reputation=101 AND u.DownVotes<=0 AND u.UpVotes>=0 AND b.Date<='2014-07-28 20:45:17'::timestamp;

