/*+ HashJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.CommentCount>=0 AND p.CommentCount<=9 AND b.Date>='2010-10-23 08:54:47'::timestamp AND b.Date<='2014-09-12 18:21:34'::timestamp AND u.Reputation=104 AND u.DownVotes>=0 AND u.DownVotes<=3 AND u.CreationDate>='2010-07-20 05:58:06'::timestamp AND u.CreationDate<='2014-09-08 05:41:36'::timestamp;

