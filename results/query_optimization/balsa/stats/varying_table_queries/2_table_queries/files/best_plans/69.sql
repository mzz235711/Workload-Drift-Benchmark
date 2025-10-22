/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=8 AND u.CreationDate<='2014-09-02 23:14:42'::timestamp;

