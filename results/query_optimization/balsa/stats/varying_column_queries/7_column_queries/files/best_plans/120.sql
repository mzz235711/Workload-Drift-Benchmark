/*+ MergeJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=7407 AND p.AnswerCount>=0 AND p.AnswerCount<=5 AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND u.Views>=0 AND u.UpVotes<=94;

