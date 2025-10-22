/*+ HashJoin(ph p u)
 NestLoop(p u)
 SeqScan(ph)
 SeqScan(p)
 IndexScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount=0 AND u.Views>=0 AND u.Views<=273 AND u.DownVotes<=0 AND u.UpVotes>=0;

