/*+ HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((c (p u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.ViewCount<=3214 AND p.AnswerCount<=24 AND p.FavoriteCount>=0 AND p.FavoriteCount<=7 AND u.UpVotes<=26;

