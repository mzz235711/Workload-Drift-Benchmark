/*+ HashJoin(v u b p)
 HashJoin(v u b)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(b)
 SeqScan(p)
 Leading(((v (u b)) p)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=5 AND v.CreationDate>='2010-08-11 00:00:00'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=11 AND p.CreationDate>='2010-08-12 08:37:45'::timestamp AND u.DownVotes<=2 AND u.CreationDate<='2014-08-06 11:39:08'::timestamp;

