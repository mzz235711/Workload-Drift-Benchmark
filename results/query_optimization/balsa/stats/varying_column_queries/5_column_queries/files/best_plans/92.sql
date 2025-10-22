/*+ HashJoin(b c u p pl)
 HashJoin(c u p pl)
 MergeJoin(u p pl)
 HashJoin(p pl)
 SeqScan(b)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(pl)
 Leading((b (c (u (p pl))))) */
SELECT COUNT(*) FROM comments as c, postLinks as pl, posts as p, users as u, badges as b WHERE p.Id = pl.RelatedPostId AND p.Id = c.PostId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND pl.LinkTypeId=1 AND p.AnswerCount<=19 AND u.Reputation<=526 AND u.DownVotes>=0 AND b.Date<='2014-09-11 08:55:52'::timestamp;

