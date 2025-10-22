/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.ViewCount<=36801 AND p.AnswerCount<=6 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=15 AND p.CreationDate='2014-02-19 22:12:50'::timestamp AND u.Reputation>=1 AND u.Reputation<=128 AND u.UpVotes>=0 AND u.CreationDate>='2010-08-24 02:44:33'::timestamp AND u.CreationDate<='2014-09-03 21:30:55'::timestamp;

