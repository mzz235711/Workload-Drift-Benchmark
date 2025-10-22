/*+ HashJoin(u c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(c)
 IndexScan(p)
 Leading((u (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-2 AND p.CommentCount>=0 AND p.CommentCount<=15 AND u.Reputation>=1 AND u.DownVotes>=0;

