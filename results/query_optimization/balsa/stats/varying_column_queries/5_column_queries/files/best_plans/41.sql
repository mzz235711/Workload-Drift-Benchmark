/*+ HashJoin(v u p b)
 HashJoin(u p b)
 HashJoin(u p)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(b)
 Leading((v ((u p) b))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate>='2010-07-21 00:00:00'::timestamp AND p.Score<=26 AND u.Reputation<=143 AND u.DownVotes<=3 AND u.CreationDate<='2014-08-18 08:06:23'::timestamp;

