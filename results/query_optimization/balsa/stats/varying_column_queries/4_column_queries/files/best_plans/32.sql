/*+ MergeJoin(ph b p u c)
 HashJoin(b p u c)
 HashJoin(p u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (p (u c))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount<=1507 AND u.Reputation<=267 AND u.DownVotes<=1;

