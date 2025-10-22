/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.AnswerCount<=8 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-29 20:28:54'::timestamp AND u.Reputation=1 AND u.Views>=0 AND u.DownVotes>=0 AND u.CreationDate>='2010-11-29 08:00:03'::timestamp AND u.CreationDate<='2014-08-27 12:43:55'::timestamp;

