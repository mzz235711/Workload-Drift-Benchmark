/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c ((v p) u))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount>=0 AND p.ViewCount<=6161 AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-22 11:05:55'::timestamp AND p.CreationDate<='2014-09-13 15:56:55'::timestamp AND u.Reputation>=1 AND u.UpVotes>=0 AND u.UpVotes<=65;

