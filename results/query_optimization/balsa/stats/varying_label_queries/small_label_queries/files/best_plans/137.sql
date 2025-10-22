/*+ NestLoop(u p ph)
 HashJoin(u p)
 IndexScan(u)
 SeqScan(p)
 IndexScan(ph)
 Leading(((u p) ph)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.Score<=12 AND p.ViewCount<=2762 AND p.AnswerCount>=0 AND p.CommentCount=1 AND p.FavoriteCount>=0 AND u.Reputation>=1;

