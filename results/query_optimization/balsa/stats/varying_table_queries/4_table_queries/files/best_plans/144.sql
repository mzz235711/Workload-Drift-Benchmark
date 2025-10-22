/*+ HashJoin(c pl p u)
 HashJoin(pl p u)
 HashJoin(pl p)
 SeqScan(c)
 IndexScan(pl)
 SeqScan(p)
 SeqScan(u)
 Leading((c ((pl p) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, postLinks as pl, users as u WHERE p.Id = c.PostId AND p.Id = pl.RelatedPostId AND p.OwnerUserId = u.Id AND c.Score=0 AND p.Score>=-2 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=13 AND pl.LinkTypeId=1 AND u.Reputation>=1 AND u.Reputation<=425 AND u.DownVotes>=0;

