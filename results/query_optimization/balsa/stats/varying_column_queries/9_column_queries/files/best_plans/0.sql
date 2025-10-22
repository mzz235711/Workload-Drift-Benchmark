/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount<=3320 AND p.AnswerCount>=0 AND p.FavoriteCount<=12 AND u.Reputation>=1 AND u.Reputation<=116 AND u.DownVotes=0 AND u.UpVotes<=201;

