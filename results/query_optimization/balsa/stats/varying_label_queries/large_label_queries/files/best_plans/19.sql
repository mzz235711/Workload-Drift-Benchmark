/*+ HashJoin(p b v u)
 HashJoin(b v u)
 HashJoin(v u)
 SeqScan(p)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((p (b (v u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>=-3 AND p.Score<=61 AND p.CommentCount>=0 AND p.CreationDate>='2010-07-21 10:13:25'::timestamp AND p.CreationDate<='2014-08-14 04:41:08'::timestamp AND b.Date>='2010-10-18 19:26:20'::timestamp AND b.Date<='2014-09-12 14:21:22'::timestamp AND u.Reputation=101 AND u.CreationDate<='2014-08-20 12:59:22'::timestamp;

