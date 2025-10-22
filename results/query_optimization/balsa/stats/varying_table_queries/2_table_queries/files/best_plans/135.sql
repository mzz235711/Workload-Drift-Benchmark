/*+ HashJoin(u p)
 SeqScan(u)
 SeqScan(p)
 Leading((u p)) */
SELECT COUNT(*) FROM posts as p, users as u WHERE p.OwnerUserId= u.Id AND p.PostTypeId=2 AND p.Score<=14 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation<=735 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.CreationDate>='2010-09-23 21:40:09'::timestamp AND u.CreationDate<='2014-09-13 20:19:48'::timestamp;

