/*+ HashJoin(c v p u)
 HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND u.Reputation<=1148 AND u.DownVotes<=0;

