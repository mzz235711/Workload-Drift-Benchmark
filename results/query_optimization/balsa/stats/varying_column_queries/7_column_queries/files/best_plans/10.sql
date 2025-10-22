/*+ HashJoin(p u)
 SeqScan(p)
 IndexScan(u)
 Leading((p u)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.AnswerCount<=6 AND p.FavoriteCount<=44 AND u.Reputation>=1 AND u.Reputation<=287 AND u.Views>=0 AND u.CreationDate<='2014-09-09 23:32:58'::timestamp;

